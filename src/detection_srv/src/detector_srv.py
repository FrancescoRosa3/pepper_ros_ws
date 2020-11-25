#!/usr/bin/env python3
import os
import rospy
from detection_srv.srv import Detector as D_srv
from detection_srv.srv import DetectorResponse
from vision_msgs.msg import Detection2D, Detection2DArray, ObjectHypothesisWithPose
from sensor_msgs.msg import Image
import ros_numpy
from detector import Detector
from classmap import category_map as classmap
import cv2

# This class implements the Detection node.
# It advertises a service, called detection_srv, that can be used in order to require a detection on the frame published on the topic
# It returns the objected detected.
# It publish the image and the bounding box computed if publish_bb is true
class DetectionService():
   
    def __init__(self):
        rospy.init_node('detection_node')

        import argparse
        ap = argparse.ArgumentParser()
        ap.add_argument("-m", "--model", dest="model", help="Path to the model", default='ssd_mobilenet_v2_320x320_coco17_tpu-8/saved_model')
        ap.add_argument("-p", "--publish_bb", dest="publish_bb", help="Publish bounding boxes and image",  default="True")
        ap.add_argument("-t", "--topic", dest="topic", help="Image topic", default="/pepper_robot/camera/front/camera/image_raw")
        ap.add_argument("-f", "--frames",dest="frames", type=int, help="analized frames number", default=1)
        # args = vars(ap.parse_args())

        import sys
        args, _ = ap.parse_known_args(args=rospy.myargv(argv=sys.argv)[1:])
        self.model = args.model
        self.publish_bb = args.publish_bb
        self.topic = args.topic

        print(self.model, self.publish_bb, self.topic, args.frames)

        # Load the model
        rospy.loginfo("Loading model")
        self.DET_PATH=os.path.join(os.path.dirname(__file__), self.model)
        self.mydetector = Detector(self.DET_PATH)
        self.objects = []
        self.num_iteration = args.frames
        self.counter = self.num_iteration
        # Advertise the service
        self.connectPepper()
        self.pub = rospy.Publisher('detection', Detection2DArray, queue_size=2)
        self.pub_image = rospy.Publisher('image_detected', Image, queue_size=2)

        self.cnt = 0

    """def reset_service(self,topic):
        topic.unregister()
        self.objects.clear()
        self.counter = 1"""

    # Service Callback
    def serviceCallback(self, data):
        rospy.loginfo("Subscribe to image topic")
        
        # Clear objects list
        self.objects.clear()
        # Reset counter
        self.counter = self.num_iteration
        
        while self.counter != 0:
            # for each new image perform classification
            #msg = rospy.wait_for_message("/pepper_robot/camera/front/camera/image_raw", Image)
            msg = rospy.wait_for_message(self.topic, Image)
            rospy.loginfo("image size: " + str(msg.height) + " - " + str(msg.width))
            self.rcv_image(msg)
        
        return DetectorResponse(self.objects)

    # Advertise the service
    def connectPepper(self):
        rospy.loginfo("Advertise service")
        s = rospy.Service('detection_srv', D_srv, self.serviceCallback)

    # Perform the inference on the given msg
    def rcv_image(self, msg):

        rospy.loginfo("Image received")
        
        import time
        start_time = time.time()
        image = ros_numpy.numpify(msg)
        # run inference
        detections = self.mydetector(image, threshold=0.6)
        # compute inference time
        elapsed_time = time.time() - start_time
        print(elapsed_time * 1000) # print ms
        # Create the message and fill the data in the message (format conversion)
        message = Detection2DArray()
        
        for clabel,score,box in zip(detections['detection_classes'], detections['detection_scores'], detections['detection_boxes']):
            
            # compute the Bounding Box
            d = Detection2D()
            d.bbox.size_x = box[3]-box[1]
            d.bbox.size_y = box[2]-box[0]
            d.bbox.center.x = box[1]+d.bbox.size_x/2
            d.bbox.center.y = box[0]+d.bbox.size_y/2
            o = ObjectHypothesisWithPose()
            o.score = score
            o.id = clabel
            d.results.append(o)
            message.detections.append(d)
            
            print(classmap[clabel])
            # if classmap[clabel] not in self.objects:
            self.objects.append(classmap[clabel])
        
        # Publish the image and the bounding box if enabled
        if self.publish_bb == "True":
            self.pub_image.publish(msg)
            self.pub.publish(message)

        self.counter = self.counter-1

        # Uncomment the following to save the analyzed images in the /images folder inside the detector_srv package
        # self.save_image(image, message)

    # Save the the analyzed images in the /images folder inside the detector_srv package
    def save_image(self, image, msg):
        rospy.loginfo('saving image')
        im = image.copy()
        h,w,_ = im.shape

        # Drawing the each object boxes over the image
        for d in msg.detections:
            c = d.results[0].id
            s = d.results[0].score
            b = [d.bbox.center.y,d.bbox.center.x,d.bbox.size_y, d.bbox.size_x]
            b[0]-=b[2]/2
            b[1]-=b[3]/2
            p1 = (int(b[1]*w+.5), int(b[0]*h+.5))
            p2 = (int((b[3]+b[1])*w+.5), int((b[2]+b[0])*h+.5))
            print(p1, p2, c, classmap[c], s)
            col = (255,0,0) 
            cv2.rectangle(im, p1, p2, col, 3)
            p1 = (p1[0]-10, p1[1])
            cv2.putText(im, "%s %.2f" % (classmap[c],s), p1, cv2.FONT_HERSHEY_SIMPLEX, 0.8, col, 2)
        
        # Save the image
        img_name = self.model.split('/')[0] + "_" + str(self.cnt) + ".jpg"
        self.cnt = self.cnt + 1
        path = "images" + "/" + img_name
        if not cv2.imwrite(path, im):
            raise Exception("Could not write image")
        else:
            rospy.loginfo('SALVATO')
        
if __name__=="__main__":
    detection_service = DetectionService()
    rospy.spin()


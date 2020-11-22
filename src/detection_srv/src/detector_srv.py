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

        rospy.loginfo("Loading model")
        self.DET_PATH=os.path.join(os.path.dirname(__file__), self.model)
        self.mydetector = Detector(self.DET_PATH)
        self.objects = []
        self.num_iteration = args.frames
        self.counter = self.num_iteration
        self.connectPepper()
        self.pub = rospy.Publisher('detection', Detection2DArray, queue_size=2)
        self.pub_image = rospy.Publisher('image_detected', Image, queue_size=2)

    """def reset_service(self,topic):
        topic.unregister()
        self.objects.clear()
        self.counter = 1"""

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


    def connectPepper(self):
        rospy.loginfo("Advertise service")
        s = rospy.Service('detection_srv', D_srv, self.serviceCallback)


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
        
        if self.publish_bb == "True":
            self.pub_image.publish(msg)
            self.pub.publish(message)
            
        self.counter = self.counter-1
    

if __name__=="__main__":
    detection_service = DetectionService()
    
    rospy.spin()


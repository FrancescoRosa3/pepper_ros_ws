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
        rospy.loginfo("Loading model")
        #self.DET_PATH=os.path.join(os.path.dirname(__file__),'efficientdet_d1_coco17_tpu-32')
        self.DET_PATH=os.path.join(os.path.dirname(__file__),'ssd_mobilenet_v2_320x320_coco17_tpu-8/saved_model')
        self.mydetector = Detector(self.DET_PATH)
        self.objects = []
        self.num_iteration = 2
        self.counter = self.num_iteration
        self.connectPepper()
        self.pub = rospy.Publisher('detection', Detection2DArray, queue_size=2)

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
            msg = rospy.wait_for_message("/pepper_robot/camera/front/camera/image_raw", Image)
            # msg = rospy.wait_for_message("/webcam/image_raw", Image)
            self.rcv_image(msg)
        
        return DetectorResponse(self.objects)


    def connectPepper(self):
        rospy.loginfo("Advertise service")
        s = rospy.Service('detection_srv', D_srv, self.serviceCallback)


    def rcv_image(self, msg):
        rospy.loginfo("Image received")
        image = ros_numpy.numpify(msg)
        detections = self.mydetector(image, threshold=0.6)
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
            self.pub.publish(message)

            print(classmap[clabel])
            if classmap[clabel] not in self.objects:
                self.objects.append(classmap[clabel])
        
        self.counter = self.counter-1
    

if __name__=="__main__":
    detection_service = DetectionService()
    
    rospy.spin()


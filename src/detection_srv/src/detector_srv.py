#!/usr/bin/env python3
import os
import rospy
from detection_srv.srv import Detector as D_srv
from detection_srv.srv import DetectorResponse
from sensor_msgs.msg import Image
import ros_numpy
from detector import Detector
from classmap import category_map as classmap 

class DetectionService():

    def __init__(self):
        rospy.init_node('detection_node')
        print("Pippo e pluto1")
        self.DET_PATH=os.path.join(os.path.dirname(__file__),'efficientdet_d1_coco17_tpu-32')
        self.mydetector = Detector(self.DET_PATH)
        self.objects = []
        self.counter = 10
        self.connectPepper()


    def serviceCallback(self, data):
        print("Pippo e pluto2")
        si = rospy.Subscriber("/testcam/image_raw", Image, self.rcv_image)
        while self.counter != 0:
            pass
        return DetectorResponse(self.objects)


    def connectPepper(self):
        print("Pippo e pluto3")
        s = rospy.Service('detection_srv', D_srv, self.serviceCallback)


    def rcv_image(self, msg):
        print("Pippo e pluto4")
        image = ros_numpy.numpify(msg)
        detections = self.mydetector(image)
        # Create the message and fill the data in the message (format conversion)
        # message = Detection2DArray()
        
        for clabel,score,box in zip(detections['detection_classes'], detections['detection_scores'], detections['detection_boxes']):
            #d = Detection2D()
            if classmap[clabel] not in self.objects:
                print("Ecco la label: " + classmap[clabel])
                self.objects.append(classmap[clabel])
        
        self.counter = self.counter-1
    

if __name__=="__main__":
    detection_service = DetectionService()
    
    rospy.spin()


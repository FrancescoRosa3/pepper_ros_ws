#!/usr/bin/env python
import rospy
from detection_srv.srv import Detector, DetectorRequest, DetectorResponse
from move_head.srv import Head_position, Head_positionRequest, Head_positionResponse

class Controller:

    def __init__(self):
        rospy.init_node('controller')
        # Wait for detection_srv
        rospy.loginfo("Wait for detection_srv")
        rospy.wait_for_service('detection_srv')   
        # Service client             
        self.detection_srv = rospy.ServiceProxy('detection_srv', Detector)
        # Wait for move_head service
        rospy.loginfo("Wait for move_head")
        rospy.wait_for_service('move_head')  
        self.move_head_srv = rospy.ServiceProxy('move_head', Head_position)

    # call the service for receiving object detected
    def get_detections(self):
        rospy.loginfo("Waiting for service response")
        obj_detected = self.detection_srv()
        return obj_detected
    
    def move_head(self, yaw, pitch):
        rospy.loginfo("Waiting for head movement")
        return self.move_head_srv(yaw, pitch)
        

if __name__ == "__main__":
    ctrl = Controller()
    ctrl.move_head(0, 0)
    obj_detected = ctrl.get_detections()
    rospy.loginfo("Object detected "+ obj_detected)
    ctrl.get_detections()
    rospy.spin()
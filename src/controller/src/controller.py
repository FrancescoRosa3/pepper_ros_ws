#!/usr/bin/env python
import rospy
from detection_srv.srv import Detector, DetectorRequest, DetectorResponse
from move_head.srv import Head_position, Head_positionRequest, Head_positionResponse
from pepper_talk.srv import Say

class Controller:

    def __init__(self):
        rospy.init_node('controller')
        # dict containing objects found based on them location
        self.dict_obj = {'front': [], 'left': [], 'right': []}
        # Wait for detection_srv
        rospy.loginfo("Wait for detection_srv")
        rospy.wait_for_service('detection_srv')   
        # Service client             
        self.detection_srv = rospy.ServiceProxy('detection_srv', Detector)
        # Wait for move_head service
        rospy.loginfo("Wait for move_head")
        rospy.wait_for_service('move_head')  
        self.move_head_srv = rospy.ServiceProxy('move_head', Head_position)
        # Wait for pepper_talk service
        rospy.loginfo("Wait for pepper_talk service")
        # rospy.wait_for_service('animated_say')
        # self.pepper_talk_srv = rospy.ServiceProxy('animated_say', Say)

    # call the service for receiving object detected
    def get_detections(self):
        rospy.loginfo("Waiting for service response")
        obj_detected = self.detection_srv()
        return obj_detected
    
    def move_head(self, yaw, pitch):
        rospy.loginfo("Waiting for head movement")
        return self.move_head_srv(yaw, pitch)
    
    # call the pepper_talk speech service
    def speech(self, msg):
        rospy.loginfo("Waiting for pepper talk")
        return self.pepper_talk_srv(msg)


    def compose_msg(self, obj_list):
        pass

if __name__ == "__main__":
    ctrl = Controller()

    """while not rospy.is_shutdown():
        # front
        #ctrl.move_head(0, 0)
        obj_detected = ctrl.get_detections()
        rospy.loginfo("Object detected front ")
        rospy.loginfo(obj_detected.objects)"""
    
    r = rospy.Rate(1)
    while not rospy.is_shutdown():
        # front
        ctrl.move_head(0, 0)
        obj_detected = ctrl.get_detections()
        rospy.loginfo("Object detected front ")
        rospy.loginfo(obj_detected.objects)
        ctrl.dict_obj["front"] = obj_detected
        r.sleep()
        # left
        ctrl.move_head(0.96, 0)
        obj_detected = ctrl.get_detections()
        rospy.loginfo("Object detected left ")
        rospy.loginfo(obj_detected.objects)
        ctrl.dict_obj["left"] = obj_detected
        ctrl.move_head(0, 0)
        r.sleep()
        # right
        ctrl.move_head(-0.96, 0)
        obj_detected = ctrl.get_detections()
        rospy.loginfo("Object detected right ")
        rospy.loginfo(obj_detected.objects)
        ctrl.dict_obj["left"] = obj_detected
        ctrl.move_head(0, 0)
        # ctrl.speech("Ciao sono pepper")
        #rospy.spin()
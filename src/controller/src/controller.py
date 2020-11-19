#!/usr/bin/env python
import rospy
from detection_srv.srv import Detector, DetectorRequest, DetectorResponse
from move_head.srv import Head_position, Head_positionRequest, Head_positionResponse
from pepper_talk.srv import Say

import argparse

ap = argparse.ArgumentParser()
ap.add_argument("-d", "--detector", help="Run detector service", default=True)
ap.add_argument("-mh", "--move_head", help="Run move head service", default=True)
ap.add_argument("-s","--speech", help="Run speech service", default=True)
args = vars(ap.parse_args())

class Controller:

    def __init__(self):
        rospy.init_node('controller')
        # dict containing objects found based on them location
        self.dict_obj = {'front': [], 'left': [], 'right': []}

        if args.get("detector") == True:
            # Wait for detection_srv    
            rospy.loginfo("Wait for detection_srv")
            rospy.wait_for_service('detection_srv')   
            # Service client             
            self.detection_srv = rospy.ServiceProxy('detection_srv', Detector)
        if args.get("move_head") == True:
            # Wait for move_head service
            rospy.loginfo("Wait for move_head")
            rospy.wait_for_service('move_head')  
            self.move_head_srv = rospy.ServiceProxy('move_head', Head_position)
        if args.get("speech") == True:
            # Wait for pepper_talk service
            rospy.loginfo("Wait for pepper_talk service")
            rospy.wait_for_service('animated_say')
            self.pepper_talk_srv = rospy.ServiceProxy('animated_say', Say)

    # call the service for receiving object detected
    def get_detections(self):
        if args.get("detector") == True:
            rospy.loginfo("Waiting for service response")
            obj_detected = self.detection_srv()
            return obj_detected
    
    def move_head(self, yaw, pitch):
        if args.get("move_head") == True:
            rospy.loginfo("Waiting for head movement")
            return self.move_head_srv(yaw, pitch)
    
    # call the pepper_talk speech service
    def speech(self):
        if args.get("speech")  == True:
            msg = self.compose_msg()
            # msg = "ciao sono pepper"
            rospy.loginfo("Waiting for pepper talk")
            return self.pepper_talk_srv(msg)


    def compose_msg(self):
        for k in self.dict_obj: 
            msg = "\\rspd=60\\On the " + k + " I can see "
            obj_num = len(self.dict_obj[k].objects)
            for v in self.dict_obj[k].objects:
                msg = msg +" a " + v + ","
            if obj_num == 0:
                msg = msg +" nothing"
            msg = msg + "\\pau=1500\\"
        rospy.loginfo("COMPOSED MESSAGE: " + msg)
        return msg

if __name__ == "__main__":
    
    ctrl = Controller()
    r = rospy.Rate(0.5)

    """while not rospy.is_shutdown():
        # front
        #ctrl.move_head(0, 0)
        obj_detected = ctrl.get_detections()
        rospy.loginfo("Object detected front ")
        rospy.loginfo(obj_detected.objects)
        r.sleep()"""
    
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
        ctrl.dict_obj["right"] = obj_detected
        ctrl.move_head(0, 0)
        ctrl.speech()
        #rospy.spin()
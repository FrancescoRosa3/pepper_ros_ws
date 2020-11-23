#!/usr/bin/python
import rospy
from naoqi_driver.naoqi_node import NaoqiNode
from pepper_talk.srv import Say, SayResponse

# This class is a bridge between ROS and Pepper SDK.
# It advertises a service called "animated_say", that takes in input the message to say
class AnimatedSay(NaoqiNode):
    def __init__(self):
        NaoqiNode.__init__(self,'animated_speech')
        self.connectNaoQi()
        pass
    
    # Service Callback
    def say(self,data):
        rospy.loginfo("START:%s" % data.message)
        self.speech.say(data.message)
        rospy.loginfo("END:%s" % data.message)
        return SayResponse(True)
    
    def connectNaoQi(self):
        # get the ALAnimatedSpeech proxy
        self.speech = self.get_proxy("ALAnimatedSpeech")
        # advertise the service
        self.s = rospy.Service('animated_say', Say, self.say)
        
if __name__ == "__main__":
    pub = AnimatedSay()
    rospy.spin()
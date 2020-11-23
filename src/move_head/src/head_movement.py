#!/usr/bin/env python
import rospy
#from naoqi_bridge_msgs.msg import JointTrajectoryActionGoal
#from trajectory_msgs.msg import JointTrajectoryPoint
from naoqi_bridge_msgs.msg import JointAnglesWithSpeed, JointAnglesWithSpeedGoal, JointAnglesWithSpeedAction,  JointAnglesWithSpeedResult
from move_head.srv import Head_position, Head_positionResponse
import actionlib

# This class implements the head controll.
# It advertises a service called move_head
# It performs the movement by using the JointAnglesWithSpeedAngles proposed by the pose controller
class Move_head:

    # Given the request 
    def move_head(self, request):
        # init goal
        goal = JointAnglesWithSpeedGoal()
        # fill goal field
        goal.joint_angles.joint_names = ['HeadYaw', 'HeadPitch']
        goal.joint_angles.relative = 0
        goal.joint_angles.speed = 0.2
        goal.joint_angles.joint_angles = [request.HeadYaw, request.HeadPitch]
        # send goal to server
        self.client.send_goal(goal)
        # wait for result from server
        self.client.wait_for_result()
        # check result
        return Head_positionResponse(True)


    def __init__(self):
        # init service server node
        rospy.init_node('move_head_server')
        # init client to joint_angles_action server
        rospy.loginfo("Connecting to server......")
        self.client = actionlib.SimpleActionClient('/pepper_robot/pose/joint_angles_action', JointAnglesWithSpeedAction)
        self.client.wait_for_server()
        rospy.loginfo("Server connected")
        # init service server
        self.service = rospy.Service('move_head', Head_position, self.move_head)


if  __name__ == '__main__':
    print("Start move head")
    mv_head = Move_head()
    rospy.spin()

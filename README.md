PEPPER_ROS

Control of Pepper for performing the following actions:
-) Move the Pepper's head in three different direction right, front and left;
-) For each direction perform an object detection;
-) Say all the object detected;

In order to run the code run the following commands:

In the pepper_ros folder
1. catkin build
2. source devel/setup.bash
3. PEPPER BRING UP PER LA RISOLUZIONE ??????
4. roslaunch controller controller.launch D:=$PATH_TO_PEPPER_WS/src/pynaoqi-python2.7-2.5.7.1-linux64

If you want to visualize the image and the bounding boxes run
1. rosrun detection_srv visualization_node -m [MODEL_NAME] -p [PATH_TO_THE_FOLDER_IN_WHICH_SAVE_THE_IMAGES]
Note: In order to visualize the image the publish_bb arguments must be "True"

execute_process(COMMAND "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_pose/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_pose/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

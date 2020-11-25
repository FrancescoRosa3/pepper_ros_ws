execute_process(COMMAND "/home/mivia/pepper_ros_ws/build/pepper_sensors_py/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/mivia/pepper_ros_ws/build/pepper_sensors_py/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

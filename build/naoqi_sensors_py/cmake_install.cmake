# Install script for directory: /home/ciccio/Robotica_Cognitiva/pepper_ros/src/naoqi_bridge/naoqi_sensors_py

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ciccio/Robotica_Cognitiva/pepper_ros/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ciccio/Robotica_Cognitiva/pepper_ros/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ciccio/Robotica_Cognitiva/pepper_ros/install" TYPE PROGRAM FILES "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ciccio/Robotica_Cognitiva/pepper_ros/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ciccio/Robotica_Cognitiva/pepper_ros/install" TYPE PROGRAM FILES "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ciccio/Robotica_Cognitiva/pepper_ros/install/setup.bash;/home/ciccio/Robotica_Cognitiva/pepper_ros/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ciccio/Robotica_Cognitiva/pepper_ros/install" TYPE FILE FILES
    "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/setup.bash"
    "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ciccio/Robotica_Cognitiva/pepper_ros/install/setup.sh;/home/ciccio/Robotica_Cognitiva/pepper_ros/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ciccio/Robotica_Cognitiva/pepper_ros/install" TYPE FILE FILES
    "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/setup.sh"
    "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ciccio/Robotica_Cognitiva/pepper_ros/install/setup.zsh;/home/ciccio/Robotica_Cognitiva/pepper_ros/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ciccio/Robotica_Cognitiva/pepper_ros/install" TYPE FILE FILES
    "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/setup.zsh"
    "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ciccio/Robotica_Cognitiva/pepper_ros/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ciccio/Robotica_Cognitiva/pepper_ros/install" TYPE FILE FILES "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/naoqi_sensors_py" TYPE FILE FILES "/home/ciccio/Robotica_Cognitiva/pepper_ros/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiCameraConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/naoqi_sensors_py" TYPE FILE FILES "/home/ciccio/Robotica_Cognitiva/pepper_ros/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiMicrophoneConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/naoqi_sensors_py" TYPE FILE FILES "/home/ciccio/Robotica_Cognitiva/pepper_ros/devel/.private/naoqi_sensors_py/lib/python2.7/dist-packages/naoqi_sensors_py/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/ciccio/Robotica_Cognitiva/pepper_ros/devel/.private/naoqi_sensors_py/lib/python2.7/dist-packages/naoqi_sensors_py/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/naoqi_sensors_py" TYPE DIRECTORY FILES "/home/ciccio/Robotica_Cognitiva/pepper_ros/devel/.private/naoqi_sensors_py/lib/python2.7/dist-packages/naoqi_sensors_py/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/naoqi_sensors_py.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/naoqi_sensors_py/cmake" TYPE FILE FILES
    "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/naoqi_sensors_pyConfig.cmake"
    "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/naoqi_sensors_pyConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/naoqi_sensors_py" TYPE FILE FILES "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/naoqi_bridge/naoqi_sensors_py/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/naoqi_sensors_py" TYPE PROGRAM FILES "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/camera.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/naoqi_sensors_py" TYPE PROGRAM FILES "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/microphone.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/naoqi_sensors_py" TYPE PROGRAM FILES "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/octomap.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/naoqi_sensors_py" TYPE PROGRAM FILES "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/catkin_generated/installspace/sonar.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/naoqi_sensors_py/launch" TYPE FILE FILES
    "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/naoqi_bridge/naoqi_sensors_py/launch/camera.launch"
    "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/naoqi_bridge/naoqi_sensors_py/launch/microphone.launch"
    "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/naoqi_bridge/naoqi_sensors_py/launch/octomap.launch"
    "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/naoqi_bridge/naoqi_sensors_py/launch/sonar.launch"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/naoqi_sensors_py" TYPE DIRECTORY FILES "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/naoqi_bridge/naoqi_sensors_py/share")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/gtest/cmake_install.cmake")
  include("/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/src/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_sensors_py/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
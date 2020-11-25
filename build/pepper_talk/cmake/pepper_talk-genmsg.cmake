# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pepper_talk: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pepper_talk_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mivia/pepper_ros_ws/src/pepper_talk/srv/Say.srv" NAME_WE)
add_custom_target(_pepper_talk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pepper_talk" "/home/mivia/pepper_ros_ws/src/pepper_talk/srv/Say.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(pepper_talk
  "/home/mivia/pepper_ros_ws/src/pepper_talk/srv/Say.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pepper_talk
)

### Generating Module File
_generate_module_cpp(pepper_talk
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pepper_talk
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pepper_talk_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pepper_talk_generate_messages pepper_talk_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mivia/pepper_ros_ws/src/pepper_talk/srv/Say.srv" NAME_WE)
add_dependencies(pepper_talk_generate_messages_cpp _pepper_talk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pepper_talk_gencpp)
add_dependencies(pepper_talk_gencpp pepper_talk_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pepper_talk_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(pepper_talk
  "/home/mivia/pepper_ros_ws/src/pepper_talk/srv/Say.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pepper_talk
)

### Generating Module File
_generate_module_eus(pepper_talk
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pepper_talk
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pepper_talk_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pepper_talk_generate_messages pepper_talk_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mivia/pepper_ros_ws/src/pepper_talk/srv/Say.srv" NAME_WE)
add_dependencies(pepper_talk_generate_messages_eus _pepper_talk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pepper_talk_geneus)
add_dependencies(pepper_talk_geneus pepper_talk_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pepper_talk_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(pepper_talk
  "/home/mivia/pepper_ros_ws/src/pepper_talk/srv/Say.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pepper_talk
)

### Generating Module File
_generate_module_lisp(pepper_talk
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pepper_talk
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pepper_talk_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pepper_talk_generate_messages pepper_talk_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mivia/pepper_ros_ws/src/pepper_talk/srv/Say.srv" NAME_WE)
add_dependencies(pepper_talk_generate_messages_lisp _pepper_talk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pepper_talk_genlisp)
add_dependencies(pepper_talk_genlisp pepper_talk_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pepper_talk_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(pepper_talk
  "/home/mivia/pepper_ros_ws/src/pepper_talk/srv/Say.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pepper_talk
)

### Generating Module File
_generate_module_nodejs(pepper_talk
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pepper_talk
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pepper_talk_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pepper_talk_generate_messages pepper_talk_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mivia/pepper_ros_ws/src/pepper_talk/srv/Say.srv" NAME_WE)
add_dependencies(pepper_talk_generate_messages_nodejs _pepper_talk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pepper_talk_gennodejs)
add_dependencies(pepper_talk_gennodejs pepper_talk_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pepper_talk_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(pepper_talk
  "/home/mivia/pepper_ros_ws/src/pepper_talk/srv/Say.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pepper_talk
)

### Generating Module File
_generate_module_py(pepper_talk
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pepper_talk
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pepper_talk_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pepper_talk_generate_messages pepper_talk_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mivia/pepper_ros_ws/src/pepper_talk/srv/Say.srv" NAME_WE)
add_dependencies(pepper_talk_generate_messages_py _pepper_talk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pepper_talk_genpy)
add_dependencies(pepper_talk_genpy pepper_talk_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pepper_talk_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pepper_talk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pepper_talk
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET pepper_talk_generate_messages_cpp)
  add_dependencies(pepper_talk_generate_messages_cpp pepper_talk_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pepper_talk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pepper_talk
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET pepper_talk_generate_messages_eus)
  add_dependencies(pepper_talk_generate_messages_eus pepper_talk_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pepper_talk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pepper_talk
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET pepper_talk_generate_messages_lisp)
  add_dependencies(pepper_talk_generate_messages_lisp pepper_talk_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pepper_talk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pepper_talk
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET pepper_talk_generate_messages_nodejs)
  add_dependencies(pepper_talk_generate_messages_nodejs pepper_talk_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pepper_talk)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pepper_talk\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pepper_talk
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET pepper_talk_generate_messages_py)
  add_dependencies(pepper_talk_generate_messages_py pepper_talk_generate_messages_py)
endif()

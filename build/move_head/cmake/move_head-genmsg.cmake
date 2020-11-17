# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "move_head: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(move_head_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/move_head/srv/Head_position.srv" NAME_WE)
add_custom_target(_move_head_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "move_head" "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/move_head/srv/Head_position.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(move_head
  "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/move_head/srv/Head_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_head
)

### Generating Module File
_generate_module_cpp(move_head
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_head
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(move_head_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(move_head_generate_messages move_head_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/move_head/srv/Head_position.srv" NAME_WE)
add_dependencies(move_head_generate_messages_cpp _move_head_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(move_head_gencpp)
add_dependencies(move_head_gencpp move_head_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_head_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(move_head
  "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/move_head/srv/Head_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_head
)

### Generating Module File
_generate_module_eus(move_head
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_head
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(move_head_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(move_head_generate_messages move_head_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/move_head/srv/Head_position.srv" NAME_WE)
add_dependencies(move_head_generate_messages_eus _move_head_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(move_head_geneus)
add_dependencies(move_head_geneus move_head_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_head_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(move_head
  "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/move_head/srv/Head_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_head
)

### Generating Module File
_generate_module_lisp(move_head
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_head
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(move_head_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(move_head_generate_messages move_head_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/move_head/srv/Head_position.srv" NAME_WE)
add_dependencies(move_head_generate_messages_lisp _move_head_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(move_head_genlisp)
add_dependencies(move_head_genlisp move_head_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_head_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(move_head
  "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/move_head/srv/Head_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_head
)

### Generating Module File
_generate_module_nodejs(move_head
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_head
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(move_head_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(move_head_generate_messages move_head_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/move_head/srv/Head_position.srv" NAME_WE)
add_dependencies(move_head_generate_messages_nodejs _move_head_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(move_head_gennodejs)
add_dependencies(move_head_gennodejs move_head_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_head_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(move_head
  "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/move_head/srv/Head_position.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_head
)

### Generating Module File
_generate_module_py(move_head
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_head
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(move_head_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(move_head_generate_messages move_head_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/move_head/srv/Head_position.srv" NAME_WE)
add_dependencies(move_head_generate_messages_py _move_head_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(move_head_genpy)
add_dependencies(move_head_genpy move_head_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_head_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_head)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_head
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET move_head_generate_messages_cpp)
  add_dependencies(move_head_generate_messages_cpp move_head_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_head)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_head
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET move_head_generate_messages_eus)
  add_dependencies(move_head_generate_messages_eus move_head_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_head)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_head
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET move_head_generate_messages_lisp)
  add_dependencies(move_head_generate_messages_lisp move_head_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_head)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_head
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET move_head_generate_messages_nodejs)
  add_dependencies(move_head_generate_messages_nodejs move_head_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_head)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_head\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_head
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET move_head_generate_messages_py)
  add_dependencies(move_head_generate_messages_py move_head_generate_messages_py)
endif()

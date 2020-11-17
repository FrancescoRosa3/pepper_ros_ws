#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/naoqi_bridge/naoqi_driver_py"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ciccio/Robotica_Cognitiva/pepper_ros/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ciccio/Robotica_Cognitiva/pepper_ros/install/lib/python2.7/dist-packages:/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_driver_py/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_driver_py" \
    "/usr/bin/python2" \
    "/home/ciccio/Robotica_Cognitiva/pepper_ros/src/naoqi_bridge/naoqi_driver_py/setup.py" \
     \
    build --build-base "/home/ciccio/Robotica_Cognitiva/pepper_ros/build/naoqi_driver_py" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ciccio/Robotica_Cognitiva/pepper_ros/install" --install-scripts="/home/ciccio/Robotica_Cognitiva/pepper_ros/install/bin"

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

echo_and_run cd "/home/mivia/pepper_ros_ws/src/naoqi_bridge/naoqi_sensors_py"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/mivia/pepper_ros_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/mivia/pepper_ros_ws/install/lib/python2.7/dist-packages:/home/mivia/pepper_ros_ws/build/naoqi_sensors_py/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/mivia/pepper_ros_ws/build/naoqi_sensors_py" \
    "/usr/bin/python2" \
    "/home/mivia/pepper_ros_ws/src/naoqi_bridge/naoqi_sensors_py/setup.py" \
     \
    build --build-base "/home/mivia/pepper_ros_ws/build/naoqi_sensors_py" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/mivia/pepper_ros_ws/install" --install-scripts="/home/mivia/pepper_ros_ws/install/bin"

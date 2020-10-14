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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/dimash/snake_robot/src/dynamixel_motor/dynamixel_controllers"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/dimash/snake_robot/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/dimash/snake_robot/install/lib/python2.7/dist-packages:/home/dimash/snake_robot/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/dimash/snake_robot/build" \
    "/usr/bin/python2" \
    "/home/dimash/snake_robot/src/dynamixel_motor/dynamixel_controllers/setup.py" \
    build --build-base "/home/dimash/snake_robot/build/dynamixel_motor/dynamixel_controllers" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/dimash/snake_robot/install" --install-scripts="/home/dimash/snake_robot/install/bin"

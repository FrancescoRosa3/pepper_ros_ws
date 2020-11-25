cd src
D=$(realpath pynaoqi-python2.7-2.5.7.1-linux64)
cd ..
echo 'export PYTHONPATH=${PYTHONPATH}:$D/lib/python2.7/site-packages' >> devel/setup.bash
echo 'export DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:$D/lib' >> devel/setup.bash
source devel/setup.bash
roslaunch pepper_bringup pepper_full_py.launch nao_ip:=10.0.1.230 resolution:=2
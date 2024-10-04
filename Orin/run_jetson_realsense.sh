xhost +
sudo docker run \
    --name odris-jetson-humble-realsense \
    --runtime nvidia \
    --privileged \
    --rm -it \
    -e DISPLAY=$DISPLAY \
    -v /run/jtop.sock:/run/jtop.sock \
    -v /tmp/.X11-unix/:/tmp/.X11-unix \
    -v $HOME/.Xauthority:/root/.Xauthority:rw \
    -v ${PWD}/src:/workspace \
    -v /dev:/dev \
    --device-cgroup-rule "c 81:* rmw" \
    --device-cgroup-rule "c 189:* rmw" \
    --device-cgroup-rule "c 188:* rmw" \
    odris-jetson-humble:realsense
xhost -
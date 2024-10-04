xhost +
#sudo docker run --gpus all --rm -it --net=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix nvcr.io/nvidia/l4t-cuda:11.4.19-devel
sudo docker run \
    --name myjetson_isaac \
    --runtime nvidia \
    --rm -it \
    --net=host \
    -e DISPLAY=$DISPLAY \
    -v /run/jtop.sock:/run/jtop.sock \
    -v /tmp/.X11-unix/:/tmp/.X11-unix \
    -v ${PWD}/src:/workspace \
    odris-jetson-humble:isaac
xhost -

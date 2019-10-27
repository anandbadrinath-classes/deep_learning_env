xhost +
docker run -it --rm \
       --gpus all \
       -v $(pwd):/deep_learning_env \
       --network=host \
       -e DISPLAY=$DISPLAY \
       -e QT_X11_NO_MITSHM=1 \
       deep_learning_env bash
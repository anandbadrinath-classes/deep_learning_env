xhost +
if [ -z "$1" ]
then
      echo "please specify a project to run (i.e ./run.sh perceptron)"
      exit 1
else
      project=$1
fi
docker run -it --rm \
       --gpus all \
       -v $(pwd):/deep_learning_env \
       --network=host \
       -e DISPLAY=$DISPLAY \
       -e QT_X11_NO_MITSHM=1 \
       deep_learning_env bash -c "cd $project && source /virtualenvs/$project/bin/activate && python main.py"
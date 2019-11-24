# Docker environment for deep learning projects

## Prerequisites

- [docker-ce](https://docs.docker.com/install/)

## Installing 
```
cd deep_learning_env
docker build -t deep_learning_env .
```

## Running
```
./run.sh <project name>
```
Where <project name> is the name of the deep learning project (i.e. perceptron)
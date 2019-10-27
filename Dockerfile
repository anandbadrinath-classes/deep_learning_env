FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04

# APT package installs
RUN apt update && apt install -y \
    python3 python3-pip python3-venv\
    libsm6 libxrender1 libxext6

# perceptron install
WORKDIR /deep_learning_env/perceptron
ADD perceptron/requirements.txt /deep_learning_env/perceptron/
RUN python3 -m venv /virtualenvs/perceptron
RUN . /virtualenvs/perceptron/bin/activate && \
    pip3 install -r requirements.txt

## Project installs
WORKDIR /deep_learning_env

CMD bash
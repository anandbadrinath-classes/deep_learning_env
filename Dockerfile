FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04

# APT package installs
RUN apt update && apt install -y \
    python3 python3-pip \
    libsm6 libxrender1 libxext6


# PIP3 installs
RUN pip3 install \
    opencv-python \
    tensorflow-gpu

WORKDIR /deep_learning_env
FROM ghcr.io/osai-ai/dokai:21.11-pytorch

WORKDIR /workdir
ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND noninteractive
ENV NVIDIA_DRIVER_CAPABILITIES video,compute,utility
ENV PYTHONPATH $PYTHONPATH:/workdir
ENV TORCH_HOME /workdir/data/.torch

# Install some python packages
RUN pip3 install --no-cache-dir \
    pytorch-ignite

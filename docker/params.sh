#!/bin/bash
cd $(dirname $0)

NAME="pytorch-tutorials-docker"
IMAGENAME="${NAME}"
CONTNAME="--name=${NAME}"
NET="--net=host"
IPC="--ipc=host"

VOLUMES="-v $(pwd)/../shared_folder:/workdir/shared_folder"

# An example of using nvidia-docker with Makefile

Train EfficientNet B0 on CIFAR with [argus](https://github.com/lRomul/argus) and [timm](https://github.com/rwightman/pytorch-image-models). 

## Requirements 

*  Nvidia drivers >= 465, CUDA >= 11.3
*  [Docker](https://www.docker.com/), [nvidia-docker](https://github.com/NVIDIA/nvidia-docker) 

The provided Dockerfile is supplied to build an image with CUDA support and cuDNN.

Build an image and enter bash session
```bash
make build
make run
```
or just 
```bash
make
```
then run training
```bash
make COMMAND="python cifar_advanced.py --batch_size 256 --lr 0.001"
```

Run training using command argument
```bash
make COMMAND="python cifar_advanced.py --batch_size 256 --lr 0.001"
```

Distributed data parallel training with Apex mixed precision and gradient accumulation
```bash
make GPUS=2 COMMAND="./cifar_advanced.sh 2 --batch_size 128 --lr 0.0005 --amp --iter_size 2"
```

Other Makefile targets
```bash
make  # stop, build, run

# do the same
make stop
make build
make run

make  # by default all GPUs passed 
make GPUS=all  # do the same
make GPUS=none  # without GPUs

make run GPUS=2  # pass the first two gpus
make run GPUS='\"device=0,1\"'  # pass GPUs numbered 0 and 1

make logs
make exec  # runs a new command in a running container
make exec COMMAND="bash"  # do the same 
make stop
```

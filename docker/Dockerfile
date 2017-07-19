FROM floydhub/pytorch:latest-gpu-py3

RUN pip3 install --upgrade http://download.pytorch.org/whl/cu80/torch-0.1.12.post2-cp35-cp35m-linux_x86_64.whl  
RUN pip3 install --upgrade git+https://github.com/pytorch/vision.git

RUN mkdir -p /workdir/tutorials/ && cd /workdir/tutorials/ && \
	git clone https://github.com/jcjohnson/pytorch-examples && \
	git clone https://github.com/spro/practical-pytorch && \
	git clone https://github.com/yunjey/pytorch-tutorial

WORKDIR /workdir
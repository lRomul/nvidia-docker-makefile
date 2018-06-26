FROM floydhub/pytorch:0.4.0-gpu.cuda9cudnn7-py3.31

RUN mkdir -p /workdir/tutorials/ && cd /workdir/tutorials/ && \
	git clone https://github.com/jcjohnson/pytorch-examples && \
	git clone https://github.com/spro/practical-pytorch && \
	git clone https://github.com/yunjey/pytorch-tutorial

WORKDIR /workdir

#!/bin/bash

# Theano installation 

sudo apt-get install python-nose g++ libopenblas-dev

sudo pip install Theano

# Caffe installation

sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler
sudo apt-get install --no-install-recommends libboost-all-dev

sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev

git clone https://github.com/BVLC/caffe

cd caffe

# Set BLAS := open in Makefile.config
# CPU_ONLY := 1 

cp Makefile.config.example Makefile.config

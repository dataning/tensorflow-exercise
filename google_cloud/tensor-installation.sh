#!/bin/bash

# check your CPU 
grep "flags" /proc/cpuinfo

# ubuntu package installation

sudo apt-get update

sudo apt-get install git python-dev python-pip python-matplotlib python-scipy build-essential sysv-rc-conf swig gfortran

# opneblas installation for numpy performance optimization

sudo apt-get install libopenblas-base
sudo apt-get install libopenblas-dev

sudo update-alternatives --config libblas.so.3

# python lib installation up to your favorite python packages

sudo pip install -U scikit-learn 


# OPEN JDK 1.7 INSTALLATION

JAVA_VER=$(java -version 2>&1 | sed 's/java version "\(.*\)\.\(.*\)\..*"/\1\2/; 1q')

if [ $JAVA_VER = 17 ]
then
    	echo "java version is 1.7"

else 
	sudo apt-get install openjdk-7-jdk

fi

# bazel installation  

BAZEL_VER=$(bazel version | grep -o '0.2.0-jdk7')

if [ $BAZEL_VER = 0.2.0-jdk7 ]
then
        echo "bazel version is 0.2.0-jdk7"

else
        
	sudo wget https://github.com/bazelbuild/bazel/releases/download/0.2.0/bazel-0.2.0-jdk7-installer-linux-x86_64.sh -O bazel.sh

	sudo chmod 755 bazel*

	./bazel.sh --user

	export PATH="$PATH:$HOME/bin"

fi

# tensorflow development version installation

sudo git clone --recurse-submodules https://github.com/tensorflow/tensorflow $HOME/tensorflow

cd $HOME/tensorflow

./configure

bazel build -c opt //tensorflow/tools/pip_package:build_pip_package

# bazel build -c opt --copt=-mavx //tensorflow/tools/pip_package:build_pip_package

mkdir _python_build

cd _python_build

ln -s ../bazel-bin/tensorflow/tools/pip_package/build_pip_package.runfiles/* .

ln -s ../tensorflow/tools/pip_package/* .

sudo python setup.py develop

cd ..

bazel build -c opt //tensorflow/core/distributed_runtime/rpc:grpc_tensorflow_server

# bazel build -c opt --copt=-mavx //tensorflow/core/distributed_runtime/rpc:grpc_tensorflow_server


# ipython notebook installation

sudo pip install ipython

sudo pip install jupyter

jupyter notebook --log-level=50 --ip='*' --port=49151






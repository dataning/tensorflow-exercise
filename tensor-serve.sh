#!/bin/bash

# ubuntu package installation

sudo apt-get update

sudo apt-get install -y   build-essential curl git libfreetype6-dev libpng12-dev libzmq3-dev 
        pkg-config \
        python-dev \
        python-numpy \
        python-pip \
        software-properties-common \
        swig \
        zip \
        zlib1g-dev 


# OPEN JDK 1.7 INSTALLATION

JAVA_VER=$(java -version 2>&1 | sed 's/java version "\(.*\)\.\(.*\)\..*"/\1\2/; 1q')

if [ $JAVA_VER = 17 ]
then
    	echo "java version is 1.7"

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

# gRPC installation
sudo pip install grpcio

# git clone tensorflow/serving

git clone --recurse-submodules https://github.com/tensorflow/serving $HOME/tensorflow_serving

cd $HOME/tensorflow_serving/tensorflow

./configure

cd ..

bazel build tensorflow_serving/...


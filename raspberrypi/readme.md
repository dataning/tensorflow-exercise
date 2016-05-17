# installing raspbian

http://raspberrypi.stackexchange.com/questions/1042/why-is-my-symbol-not-working

http://www.techrepublic.com/article/five-tips-for-getting-the-most-out-of-a-raspberry-pi-3-as-a-pc/

https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md

sudo apt-get -y update

sudo apt-get -y install git python-dev python-pip python-matplotlib python-scipy build-essential sysv-rc-conf swig gfortran virtualenv 

sudo apt-get -y install python-pyaudio

# installing tensorflow 

https://github.com/samjabrahams/tensorflow-on-raspberry-pi

wget https://github.com/samjabrahams/tensorflow-on-raspberry-pi/raw/master/bin/tensorflow-0.8.0-cp27-none-linux_armv7l.whl

sudo pip install tensorflow-0.8.0-cp27-none-linux_armv7l.whl

# activating virtualenv

mkdir machine

cd machine

virtualenv --system-site-packages audio

source audio/bin/activate
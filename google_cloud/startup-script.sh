#! /bin/bash

# The script is downloaded from https://github.com/GoogleCloudPlatform/getting-started-python/blob/master/7-gce/gce/startup-script.sh
# and modified.

# [START startup]
set -v

# Talk to the metadata server to get the project id
PROJECTID=$(curl -s "http://metadata.google.internal/computeMetadata/v1/project/project-id" -H "Metadata-Flavor: Google")

# Install logging monitor. The monitor will automatically pickup logs sent to
# syslog.
# [START logging]
curl -s "https://storage.googleapis.com/signals-agents/logging/google-fluentd-install.sh" | bash
service google-fluentd restart &
# [END logging]


# Install dependencies from apt
apt-get update
apt-get install -yq \
    git python-dev python-pip python-matplotlib python-scipy build-essential \
    build-essential supervisor python libffi-dev libssl-dev
    
    
# Create a pythonapp user. The application will run as this user.
useradd -m -d /home/pythonapp pythonapp    
    
    
# Get the source code from the Google Cloud Repository
# git requires $HOME and it's not set during the startup script.

mkdir /opt/cuteconda 

export HOME=/root
git config --global credential.helper gcloud.sh
git clone https://github.com/jongchul/tensorflow-exercise.git /opt/cuteconda/

# Install app dependencies
# please check below 'Anaconda installer file hashes' if you want production. 
# https://docs.continuum.io/anaconda/hashes


if [ ! -d "opt/cuteconda/conda" ] ;
    then

        wget http://repo.continuum.io/archive/Anaconda2-4.1.1-Linux-x86_64.sh -O /opt/cuteconda/conda.sh && \
        sudo /bin/bash /opt/cuteconda/conda.sh -b -p /opt/cuteconda/conda
    
        
fi

export PATH=$PATH:"/opt/cuteconda/conda/bin"
 
cd /opt/cuteconda

conda update -y conda

conda update -y anaconda
    
conda create -n tensorflow -y python=2.7

conda install -n tensorflow -c jjhelmus -y tensorflow=0.9.0

conda install -n tensorflow -y numba dask jupyter matplotlib Theano scikit-learn

conda install -n tensorflow -c r -y r-essentials

# Make sure the pythonapp user owns the application code
chown -R pythonapp:pythonapp /opt/cuteconda

# Configure supervisor to start pythonapp inside of our conda env and run the
# applicaiton.
cat >/etc/supervisor/conf.d/python-app.conf << EOF
[program:pythonapp]
directory=/opt/cuteconda
command=/opt/cuteconda/conda/envs/tensorflow/bin/jupyter notebook --ip='*' --port=8080
autostart=true
autorestart=true
user=pythonapp

# Environment variables ensure that the application runs inside of the
# configured virtualenv.
environment=PATH="/opt/cuteconda/conda/envs/tensorflow/bin",\
    HOME="/home/pythonapp",USER="pythonapp"
stdout_logfile=syslog
stderr_logfile=syslog
EOF

supervisorctl reread
supervisorctl update

# Application should now be running under supervisor
# [END startup]




    





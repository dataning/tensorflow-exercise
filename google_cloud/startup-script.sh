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
    git python-dev python-pip python-matplotlib python-scipy build-essential

# please check below 'Anaconda installer file hashes' if you want production. 
# https://docs.continuum.io/anaconda/hashes


mkdir /opt/cuteconda 

wget http://repo.continuum.io/archive/Anaconda2-4.1.1-Linux-x86_64.sh -O /opt/cuteconda/conda.sh && \
    /bin/bash ~/conda.sh
    





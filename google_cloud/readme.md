# may not work

Installation Guide

Virtual Box VM installation 

 1. Donwload Vagrantfile from https://gist.github.com/jongchul/6da1ac010673b3baf490 
    - ubuntu 1404 desktop

 2. 'vagrant up' on command prompt  

 3. you can ssh into the vm 
    - id : vagrant 
    - password : vagrant  

 4. git installation on the vm 
    - sudo apt-get install git
    

gcloud sdk installation

 1. git clone https://github.com/jongchul/gcloud
    - cd gcloud 
 
 2. sudo chmod 755 google_sdk.sh 

 3. sh google_sdk.sh

 4. gcloud init  

 5. gcloud auth login 
    - for more information, please refer to the official google cloud site, https://cloud.google.com/sdk/gcloud/reference/auth/login

 6. gcloud compute instances create tensor-1 --image debian-7 --machine-type n1-standard-4

 7. gcloud compute copy-files ~/gcloud/tensor-installation.sh jongchul.seon@tensor-1:~/

Google cloud compute engine ssh login

 1. gcloud compute ssh [USER@tenrsor-1]
    - for more information, please refer to, https://cloud.google.com/sdk/gcloud/reference/compute/ssh

 

Tensorboard 

 1. python tensorflow/tensorboard/tensorboard.py --logdir=/tmp/


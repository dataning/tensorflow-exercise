#Installing gcloud sdk 

 1. git clone https://github.com/jongchul/tensorflow-exercise
    - cd tensorflow-exercise/google_cloud 
 
 2. sudo chmod 755 google_sdk.sh 

 3. sh google_sdk.sh
 
 
 #Creating instance on google cloud

 4. gcloud init
    - for more information, please refer to the official google cloud site, https://cloud.google.com/sdk/gcloud/reference/

 5. gcloud compute instances create myinstance1 --zone us-central1-a --image debian-7 --machine-type g1-small --boot-disk-size 40GB

 6. gcloud compute copy-files python-installation.sh jongchul.seon@myinstance1:~/
 
 
 #Jupyter Hub Setup 
 
 please refer to 
  https://github.com/jupyterhub/jupyterhub-deploy-docker




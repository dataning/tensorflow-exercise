Under construction......................

## Directory Layout

- R : R examples

- tensorflow : Tensorflow examples 
   - image_matrix1.ipynb : converting image data(jpg format) into tensor object
   - differenciation.ipynb : calculus differenciation 
   - embedding1.ipynb : simple embedding example using Theano
   - word2vec_basic.ipynb : tensorflow word2vec_basic

- google_cloud
   - tensorflow installation on google cloud compute engine 

- project
   - T.B.D.


## installation on PC

- install anaconda
      - https://www.continuum.io/downloads#_unix

- install tensorflow (www.tensorflow.org)
      - conda create -n tensorflow python=2.7
      - source activate tensorflow
      - pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.8.0-cp27-none-linux_x86_64.whl

- install python packages
      - conda install jupyter
      - conda install matplotlib
      - conda install Theano
      - conda install scikit-learn
      - conda install -c r r-essentials
     
- install bioconductor packages 
      - http://bioconda.github.io/

- start jupyter notebook 
      - jupyter notebook --log-level=50 --ip='*' --port=49151

 

## ubuntu 14.04 desktop virtual box installation
 
- Donwload Vagrantfile from https://gist.github.com/jongchul/6da1ac010673b3baf490 
   
- 'vagrant up' in command prompt  

- you can ssh into the vm 
  - id : vagrant 
  - password : vagrant  

- git installation on the vm 
    - sudo apt-get update
    - sudo apt-get install git
    

## Reference sites

- calculus : www.edx.org calculus differenciation course

- tensorflow : www.tensorflow.org tensorflow web site








  If we can well organize what we've done at school. Even we can show our works to other cooperators or friends easily, it will be 
 great. Machine learning classes with Jupyter notebook is very familiar with many students who learn computer programming language. As I'm 
 one of these studuent, Here I've summarized some of what I have been doing when I've taken machine learning classes.  
   
  (Hopefully, these simple and somewhat tedius codes can help!!!!!)
 
 
## Installation files and some codes.

- raspberrypi 

- dataflow

- R : R examples

- tensorflow : Tensorflow examples 
   - image_matrix1.ipynb : converting image data(jpg format) into tensor object
   - differenciation.ipynb : calculus differenciation 
   - embedding1.ipynb : simple embedding example using Theano
   - word2vec_basic.ipynb : tensorflow word2vec_basic

- genomics

- google_cloud
    

## installation on PC

- installing anaconda
      - https://www.continuum.io/downloads#_unix
     
- installing tensorflow (www.tensorflow.org)
      - conda create -n tensorflow python=2.7
      - source activate tensorflow
      - pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.8.0-cp27-none-linux_x86_64.whl

- installing python packages 
      - conda install numba
      - conda install dask
      - conda install jupyter
      - conda install matplotlib
      - conda install Theano
      - conda install scikit-learn
      - conda install -c r r-essentials
     
- installing bioconductor packages 
      - http://bioconda.github.io/

- starting jupyter notebook 
      - jupyter notebook --log-level=50 --ip='*' --port=49151
      

## Installing Julia (optional)

- http://julialang.org/downloads/platform.html
- http://quant-econ.net/jl/getting_started.html
 

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

- raspberrypi : www.raspberrypi.org

- jupyter : jupyter.org

- google_cloud : cloud.google.com






 
 I've not  tested below packages. I've taken coursera genomic class, Command Line Tools for Genomic Data Science, which uses tophat2 and  
 bowtie with command line on the class environment. Below packages should work!!!!


Go to your virtual env...................

    eg) source activate tensorflow

## rna-seq analysis tools installation on your virtual env

sudo apt-get install libtbb-dev

conda install bowtie2

conda install tophat

conda install htseq

conda install bioconductor-ggbio

## ngsplot installation on your virtual env

install.packages("doMC", repos="http://R-Forge.R-project.org")

source("http://bioconductor.org/biocLite.R")

conda install bioconductor-bsgenome
conda install bioconductor-shortread


https://github.com/shenlab-sinai/ngsplot


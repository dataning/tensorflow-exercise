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


### SETTING Devtools
myCRAN <-'http://archive.linux.duke.edu/cran/'
mypkgs<-c('devtools')
install.packages(mypkgs, repos=myCRAN)

### SETTING ShortRead
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("ShortRead", version = "3.8")

### Install my test packages
devtools::install_github("clintko/TestDCCRpkg")
library("TestDCCRpkg")

### try some functions
hello()


### record the environment and exit
sessionInfo()
q(save="no")

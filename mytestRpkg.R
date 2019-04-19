### SETTING Devtools
myCRAN <-'http://archive.linux.duke.edu/cran/'
mypkgs<-c('devtools')
install.packages(mypkgs, repos=myCRAN)

### Install my test packages
devtools::install_github("clintko/TestDCCRpkg")
library("TestDCCRpkg")

### try some functions
hello()
print(head(reads))
print(head(barcodes))
print(phreds[1:3, 1:3])

### record the environment and exit
sessionInfo()
q(save="no")

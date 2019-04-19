### SETTING Devtools
myCRAN <-'http://archive.linux.duke.edu/cran/'
mypkgs<-c('devtools')
install.packages(mypkgs, repos=myCRAN)

### Install my test packages
devtools::install_github("clintko/BarcodeMatcher")
library("BarcodeMatcher")

### try some functions
hello()


### record the environment and exit
sessionInfo()
q(save="no")

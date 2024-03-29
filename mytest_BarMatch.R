### SETTING Devtools
myCRAN <-'http://archive.linux.duke.edu/cran/'
mypkgs<-c('devtools')
install.packages(mypkgs, repos=myCRAN)

### Install my test packages
devtools::install_github("clintko/BarcodeMatcher")
library("BarcodeMatcher")

### try some functions
hello()
head(fasta)
head(fastq)
head(phred)

###
out = hamming_filter(c("ATTCG", "ATTCA", "AAAAA", "AATAA"), "ATTCG")
out == c("ATTCA", "ATTCG")

### help file
?get_seq_fasta

### record the environment and exit
sessionInfo()
q(save="no")

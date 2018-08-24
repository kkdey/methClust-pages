
#########  bisulphite seq data analysis   ##################

source("https://bioconductor.org/biocLite.R")
biocLite("bsseqData")

library(bsseqData)
data(BS.cancer.ex)
granges(BS.cancer.ex)
M_mat <- getCoverage(BS.cancer.ex, type = "M")
cov_mat <- getCoverage(BS.cancer.ex, type = "Cov")

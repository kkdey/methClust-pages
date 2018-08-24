
###########  CpG/nonCpG analysis  ###############

library(data.table)
meth <- data.frame(fread("../data/Blood_Epigenome/Coverage_CpG_100kb_methylated_counts.cov"))
unmeth <- data.frame(fread("../data/Blood_Epigenome/Coverage_CpG_100kb_unmethylated_counts.cov"))

meth2 <- meth[,-(1:4)]
rownames(meth2) <- paste0(meth[,1], "_", meth[,2], "_", meth[,3])
unmeth2 <- unmeth[,-(1:4)]
rownames(unmeth2) <- paste0(unmeth[,1], "_", unmeth[,2], "_", unmeth[,3])
meth2[is.na(meth2)] <- 0
unmeth2[is.na(unmeth2)] <- 0

meth3 <- t(meth2)
unmeth3 <- t(unmeth2)

topics <- ecostructure::ecos_fit(meth3, max_dat = meth3+unmeth3, K = 2)


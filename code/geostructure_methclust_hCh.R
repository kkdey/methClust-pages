
#############   Structure methClust hch   ##############################

## t-SNE projections + Soft clustering from methClust

library(mapplots)

out <- get(load("../output/tsne_hch.rda"))
tsne_proj <- out$Y

topic_clus <- list()
topic_clus[[1]] <- get(load("../output/methclust_hch_k_2.rda"))
topic_clus[[2]] <- get(load("../output/methclust_hch_k_3.rda"))
topic_clus[[3]] <- get(load("../output/methclust_hch_k_4.rda"))
topic_clus[[4]] <- get(load("../output/methclust_hch_k_5.rda"))
topic_clus[[5]] <- get(load("../output/methclust_hch_k_6.rda"))


png(filename="../output/methClust_hch_5.png",width = 1200, height = 800)
plot(NA,NA, xlim=c(min(tsne_proj[, 1]),max(tsne_proj[, 1])),
     ylim=c(min(tsne_proj[, 2]),max(tsne_proj[, 2])))
color = c("red", "cornflowerblue", "cyan", "brown4", "burlywood", "darkgoldenrod1",
          "azure4", "green","deepskyblue","yellow", "azure1")
intensity <- 0.9
lapply(1:dim(topic_clus[[5]]$omega)[1], function(r)
  add.pie(z=as.integer(100*topic_clus[[5]]$omega[r,]),
          x=tsne_proj[r,1], y=tsne_proj[r,2], labels=c("","",""),
          radius = 1,
          col=c(alpha(color[1],intensity),alpha(color[2],intensity),
                alpha(color[3], intensity), alpha(color[4], intensity),
                alpha(color[5], intensity), alpha(color[6], intensity),
                alpha(color[7], intensity), alpha(color[8], intensity),
                alpha(color[9], intensity), alpha(color[10], intensity),
                alpha(color[11], intensity))));
dev.off()

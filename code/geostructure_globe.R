
############  geostructure on global map data  ####################


latlong <- get(load("../data/LatLongCells_frame.rda"))

K10_global_topics <- get(load(file="../output/birds_meth_cluster_10.rda"))

png(filename="../output/geostructure_birds_globe_2.png",width = 1500, height = 800)

map("worldHires",
    col = "gray", fill=TRUE, mar=c(0.1,0.1,0.1,0.1))

library(ggplot2)
library(maps)
library(mapdata)
library(mapplots)

intensity <- 0.9
png(filename="../output/geostructure_birds_globe_10.png",width = 2000, height = 1000)
map('worldHires', fill=FALSE, interior = FALSE, resolution = 10)
lapply(1:dim(K10_global_topics$omega)[1], function(r)
  add.pie(z=as.integer(100*K10_global_topics$omega[r,]),
          x=latlong[r,1], y=latlong[r,2], labels=c("","",""),
          radius = 1,
          col=c(alpha(2,intensity),alpha(3,intensity), alpha(4, intensity), alpha(5, intensity),
                alpha(6, intensity), alpha(7, intensity), alpha(8, intensity), alpha(9, intensity),
                alpha(10, intensity))));
dev.off()


K11_global_topics <- get(load(file="../output/birds_meth_cluster_11.rda"))

intensity <- 1
set.seed(200)
color_full=c("red","blue","cornflowerblue","black","cyan","darkblue",
        "brown4","burlywood","darkgoldenrod1","darkgray","deepskyblue","darkkhaki",
        "firebrick","darkorchid","hotpink","green","magenta","yellow", "azure1","azure4");
color = c("red", "cornflowerblue", "cyan", "brown4", "burlywood", "darkgoldenrod1",
          "azure4", "green","deepskyblue","yellow", "azure1")
png(filename="../output/geostructure_birds_globe_11.png",width = 2000, height = 1000)
map('worldHires', fill=FALSE, interior = FALSE, resolution = 10)
lapply(1:dim(K11_global_topics$omega)[1], function(r)
  add.pie(z=as.integer(100*K11_global_topics$omega[r,]),
          x=latlong[r,1], y=latlong[r,2], labels=c("","",""),
          radius = 0.8,
          col=c(alpha(color[1],intensity),alpha(color[2],intensity),
                alpha(color[3], intensity), alpha(color[4], intensity),
                alpha(color[5], intensity), alpha(color[6], intensity),
                alpha(color[7], intensity), alpha(color[8], intensity),
                alpha(color[9], intensity), alpha(color[10], intensity),
                alpha(color[11], intensity))));
dev.off()



K10_global_topics <- get(load(file="../output/birds_meth_cluster_10.rda"))

intensity <- 1
set.seed(200)
color_full=c("red","blue","cornflowerblue","black","cyan","darkblue",
             "brown4","burlywood","darkgoldenrod1","darkgray","deepskyblue","darkkhaki",
             "firebrick","darkorchid","hotpink","green","magenta","yellow", "azure1","azure4");
color = c("red", "cornflowerblue", "cyan", "brown4", "burlywood", "darkgoldenrod1",
          "azure4", "green","deepskyblue","yellow", "azure1")
png(filename="../output/geostructure_birds_globe_10.png",width = 2000, height = 1000)
map('worldHires', fill=FALSE, interior = FALSE, resolution = 10)
lapply(1:dim(K10_global_topics$omega)[1], function(r)
  add.pie(z=as.integer(100*K10_global_topics$omega[r,]),
          x=latlong[r,1], y=latlong[r,2], labels=c("","",""),
          radius = 0.8,
          col=c(alpha(color[1],intensity),alpha(color[2],intensity),
                alpha(color[3], intensity), alpha(color[4], intensity),
                alpha(color[5], intensity), alpha(color[6], intensity),
                alpha(color[7], intensity), alpha(color[8], intensity),
                alpha(color[9], intensity), alpha(color[10], intensity),
                alpha(color[11], intensity))));
dev.off()


K2_global_topics <- get(load(file="../output/birds_meth_cluster_2.rda"))

intensity <- 1
set.seed(200)
color_full=c("red","blue","cornflowerblue","black","cyan","darkblue",
             "brown4","burlywood","darkgoldenrod1","darkgray","deepskyblue","darkkhaki",
             "firebrick","darkorchid","hotpink","green","magenta","yellow", "azure1","azure4");
color = c("red", "cornflowerblue", "cyan", "brown4", "burlywood", "darkgoldenrod1",
          "azure4", "green","deepskyblue","yellow", "azure1")
png(filename="../output/geostructure_birds_globe_2.png",width = 2000, height = 1000)
map('worldHires', fill=FALSE, interior = FALSE, resolution = 10)
lapply(1:dim(K2_global_topics$omega)[1], function(r)
  add.pie(z=as.integer(100*K2_global_topics$omega[r,]),
          x=latlong[r,1], y=latlong[r,2], labels=c("","",""),
          radius = 0.8,
          col=c(alpha(color[1],intensity),alpha(color[2],intensity),
                alpha(color[3], intensity), alpha(color[4], intensity),
                alpha(color[5], intensity), alpha(color[6], intensity),
                alpha(color[7], intensity), alpha(color[8], intensity),
                alpha(color[9], intensity), alpha(color[10], intensity),
                alpha(color[11], intensity))));
dev.off()


K5_global_topics <- get(load(file="../output/birds_meth_cluster_5.rda"))

intensity <- 1
set.seed(200)
color_full=c("red","blue","cornflowerblue","black","cyan","darkblue",
             "brown4","burlywood","darkgoldenrod1","darkgray","deepskyblue","darkkhaki",
             "firebrick","darkorchid","hotpink","green","magenta","yellow", "azure1","azure4");
color = c("red", "cornflowerblue", "cyan", "brown4", "burlywood", "darkgoldenrod1",
          "azure4", "green","deepskyblue","yellow", "azure1")
png(filename="../output/geostructure_birds_globe_5.png",width = 2000, height = 1000)
map('worldHires', fill=FALSE, interior = FALSE, resolution = 10)
lapply(1:dim(K5_global_topics$omega)[1], function(r)
  add.pie(z=as.integer(100*K5_global_topics$omega[r,]),
          x=latlong[r,1], y=latlong[r,2], labels=c("","",""),
          radius = 0.8,
          col=c(alpha(color[1],intensity),alpha(color[2],intensity),
                alpha(color[3], intensity), alpha(color[4], intensity),
                alpha(color[5], intensity), alpha(color[6], intensity),
                alpha(color[7], intensity), alpha(color[8], intensity),
                alpha(color[9], intensity), alpha(color[10], intensity),
                alpha(color[11], intensity))));
dev.off()




K15_global_topics <- get(load(file="../output/birds_meth_cluster_15.rda"))

idx1 <- which(K15_global_topics$omega[,1] <= 0.5)
topics_omega_pre <- K15_global_topics$omega[idx1,-1]
topics_omega <- t(apply(topics_omega_pre, 1, function(x) return(x/sum(x))))
latlong2 <- latlong[idx1,]


#topics_omega <- K15_global_topics$omega
#latlong2 <- latlong

intensity <- 1
set.seed(200)
color_full=c("red","blue","cornflowerblue","black","cyan","darkblue",
             "brown4","burlywood","darkgoldenrod1","darkgray","deepskyblue","darkkhaki",
             "firebrick","darkorchid","hotpink","green","magenta","yellow", "azure1","azure4");
color = c("cornflowerblue", "cyan", "brown4", "burlywood", "gold2",
          "azure4", "green","deepskyblue","yellow", "darkseagreen1", "chocolate1", "hotpink",
          "blue", "darkkhaki")
png(filename="../output/geostructure_birds_globe_15.png",width = 2000, height = 1000)
map('worldHires', fill=FALSE, interior = FALSE, resolution = 10)
lapply(1:dim(topics_omega)[1], function(r)
  add.pie(z=as.integer(100*topics_omega[r,]),
          x=latlong2[r,1], y=latlong2[r,2], labels=c("","",""),
          radius = 0.7,
          col=c(alpha(color[1],intensity),alpha(color[2],intensity),
                alpha(color[3], intensity), alpha(color[4], intensity),
                alpha(color[5], intensity), alpha(color[6], intensity),
                alpha(color[7], intensity), alpha(color[8], intensity),
                alpha(color[9], intensity), alpha(color[10], intensity),
                alpha(color[11], intensity),  alpha(color[12], intensity),
                alpha(color[13], intensity),  alpha(color[14], intensity),
                alpha(color[15], intensity))));
dev.off()





topics_omega <- K15_global_topics$omega
latlong2 <- latlong

intensity <- 1
set.seed(200)
color_full=c("red","blue","cornflowerblue","black","cyan","darkblue",
             "brown4","burlywood","darkgoldenrod1","darkgray","deepskyblue","darkkhaki",
             "firebrick","darkorchid","hotpink","green","magenta","yellow", "azure1","azure4");
color = c("white", "cornflowerblue", "cyan", "brown4", "burlywood", "gold2",
          "azure4", "green","deepskyblue","yellow", "red",
          "chocolate1", "hotpink",
          "blue", "darkkhaki")
png(filename="../output/geostructure_birds_globe_15_3.png",width = 2000, height = 1000)
map('worldHires', fill=FALSE, interior = FALSE, resolution = 10)
lapply(1:dim(topics_omega)[1], function(r)
  add.pie(z=as.integer(100*topics_omega[r,]),
          x=latlong2[r,1], y=latlong2[r,2], labels=c("","",""),
          radius = 1.2,
          col=c(alpha(color[1],intensity),alpha(color[2],intensity),
                alpha(color[3], intensity), alpha(color[4], intensity),
                alpha(color[5], intensity), alpha(color[6], intensity),
                alpha(color[7], intensity), alpha(color[8], intensity),
                alpha(color[9], intensity), alpha(color[10], intensity),
                alpha(color[11], intensity),  alpha(color[12], intensity),
                alpha(color[13], intensity),  alpha(color[14], intensity),
                alpha(color[15], intensity))));
dev.off()


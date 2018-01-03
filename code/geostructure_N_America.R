
###########

library(ggplot2)
library(maps)
library(mapdata)
library(mapplots)

intensity <- 0.9

##################    North america   geostructure    #############################

latlong <- get(load("../data/LatLongCells_frame.rda"))

idx1 <- which(latlong[,2] > 15 & latlong[,2] < 80)
idx2 <- which(latlong[,1] > -150 & latlong[,1] < -30)
idx <- intersect(idx1, idx2)
length(idx)
latlong2 <- latlong[idx,]

##########################   K = 2   #######################################

topics <- get(load("../output/N_America/methClust_2.rda"))

png(filename="../output/N_America/geostructure_birds_2.png",width = 1200, height = 800)
map("worldHires",
    ylim=c(15,80), xlim=c(-150,-30), # Re-defines the latitude and longitude range
    col = "gray", fill=TRUE, mar=c(0.1,0.1,0.1,0.1))
lapply(1:dim(topics$omega)[1], function(r)
  add.pie(z=as.integer(100*topics$omega[r,]),
          x=latlong2[r,1], y=latlong2[r,2], labels=c("","",""),
          radius = 0.4,
          col=c(alpha(2,0.6),alpha(3,0.6))));
dev.off()


##########################   K = 3   #######################################

topics <- get(load("../output/N_America/methClust_3.rda"))
color = c("red", "cornflowerblue", "cyan", "brown4", "burlywood", "darkgoldenrod1",
          "azure4", "green","deepskyblue","yellow", "azure1")
png(filename="../output/N_America/geostructure_birds_3.png",width = 1200, height = 800)
map("worldHires",
    ylim=c(15,80), xlim=c(-150,-30), # Re-defines the latitude and longitude range
    col = "gray", fill=TRUE, mar=c(0.1,0.1,0.1,0.1))
lapply(1:dim(topics$omega)[1], function(r)
  add.pie(z=as.integer(100*topics$omega[r,]),
          x=latlong2[r,1], y=latlong2[r,2], labels=c("","",""),
          radius = 0.4,
          col=c(alpha(color[1],intensity),alpha(color[2],intensity),
                alpha(color[3], intensity), alpha(color[4], intensity),
                alpha(color[5], intensity), alpha(color[6], intensity),
                alpha(color[7], intensity), alpha(color[8], intensity),
                alpha(color[9], intensity), alpha(color[10], intensity),
                alpha(color[11], intensity))));
dev.off()


##########################   K = 4   #######################################

topics <- get(load("../output/N_America/methClust_4.rda"))
color = c("red", "cornflowerblue", "cyan", "brown4", "burlywood", "darkgoldenrod1",
          "azure4", "green","deepskyblue","yellow", "azure1")
png(filename="../output/N_America/geostructure_birds_4.png",width = 1200, height = 800)
map("worldHires",
    ylim=c(15,80), xlim=c(-150,-30), # Re-defines the latitude and longitude range
    col = "gray", fill=TRUE, mar=c(0.1,0.1,0.1,0.1))
lapply(1:dim(topics$omega)[1], function(r)
  add.pie(z=as.integer(100*topics$omega[r,]),
          x=latlong2[r,1], y=latlong2[r,2], labels=c("","",""),
          radius = 0.4,
          col=c(alpha(color[1],intensity),alpha(color[2],intensity),
                alpha(color[3], intensity), alpha(color[4], intensity),
                alpha(color[5], intensity), alpha(color[6], intensity),
                alpha(color[7], intensity), alpha(color[8], intensity),
                alpha(color[9], intensity), alpha(color[10], intensity),
                alpha(color[11], intensity))));
dev.off()

##########################   K = 5   #######################################

topics <- get(load("../output/N_America/methClust_5.rda"))
color = c("red", "cornflowerblue", "cyan", "brown4", "burlywood", "darkgoldenrod1",
          "azure4", "green","deepskyblue","yellow", "azure1")
png(filename="../output/N_America/geostructure_birds_5.png",width = 1200, height = 800)
map("worldHires",
    ylim=c(15,80), xlim=c(-150,-30), # Re-defines the latitude and longitude range
    col = "gray", fill=TRUE, mar=c(0.1,0.1,0.1,0.1))
lapply(1:dim(topics$omega)[1], function(r)
  add.pie(z=as.integer(100*topics$omega[r,]),
          x=latlong2[r,1], y=latlong2[r,2], labels=c("","",""),
          radius = 0.4,
          col=c(alpha(color[1],intensity),alpha(color[2],intensity),
                alpha(color[3], intensity), alpha(color[4], intensity),
                alpha(color[5], intensity), alpha(color[6], intensity),
                alpha(color[7], intensity), alpha(color[8], intensity),
                alpha(color[9], intensity), alpha(color[10], intensity),
                alpha(color[11], intensity))));
dev.off()


##########################   K = 6  #######################################

topics <- get(load("../output/N_America/methClust_6.rda"))
color = c("red", "cornflowerblue", "cyan", "brown4", "burlywood", "darkgoldenrod1",
          "azure4", "green","deepskyblue","yellow", "azure1")
png(filename="../output/N_America/geostructure_birds_6.png",width = 1200, height = 800)
map("worldHires",
    ylim=c(15,80), xlim=c(-150,-30), # Re-defines the latitude and longitude range
    col = "gray", fill=TRUE, mar=c(0.1,0.1,0.1,0.1))
lapply(1:dim(topics$omega)[1], function(r)
  add.pie(z=as.integer(100*topics$omega[r,]),
          x=latlong2[r,1], y=latlong2[r,2], labels=c("","",""),
          radius = 0.4,
          col=c(alpha(color[1],intensity),alpha(color[2],intensity),
                alpha(color[3], intensity), alpha(color[4], intensity),
                alpha(color[5], intensity), alpha(color[6], intensity),
                alpha(color[7], intensity), alpha(color[8], intensity),
                alpha(color[9], intensity), alpha(color[10], intensity),
                alpha(color[11], intensity))));
dev.off()

##########################   K = 7  #######################################

topics <- get(load("../output/N_America/methClust_7.rda"))
#color = c("red", "cornflowerblue", "cyan", "brown4", "burlywood", "darkgoldenrod1",
#          "azure4", "green","deepskyblue","yellow", "azure1")
color = c("gray80", "turquoise4", "deepskyblue", "goldenrod1", "cyan", "darkolivegreen1",
          "blue")
png(filename="../output/N_America/geostructure_birds_7.png",width = 1200, height = 800)
map("worldHires",
    ylim=c(15,80), xlim=c(-150,-30), # Re-defines the latitude and longitude range
    col = "gray44", fill=TRUE, mar=c(0.1,0.1,0.1,0.1))
lapply(1:dim(topics$omega)[1], function(r)
  add.pie(z=as.integer(100*topics$omega[r,]),
          x=latlong2[r,1], y=latlong2[r,2], labels=c("","",""),
          radius = 0.5,
          col=c(alpha(color[1],intensity),alpha(color[2],intensity),
                alpha(color[3], intensity), alpha(color[4], intensity),
                alpha(color[5], intensity), alpha(color[6], intensity),
                alpha(color[7], intensity), alpha(color[8], intensity),
                alpha(color[9], intensity), alpha(color[10], intensity),
                alpha(color[11], intensity))));
dev.off()

##########################   K = 10  #######################################

topics <- get(load("../output/N_America/methClust_10.rda"))
color = c("red", "cornflowerblue", "cyan", "brown4", "burlywood", "darkgoldenrod1",
          "azure4", "green","deepskyblue","yellow", "azure1")
png(filename="../output/N_America/geostructure_birds_10.png",width = 1200, height = 800)
map("worldHires",
    ylim=c(15,80), xlim=c(-150,-30), # Re-defines the latitude and longitude range
    col = "gray", fill=TRUE, mar=c(0.1,0.1,0.1,0.1))
lapply(1:dim(topics$omega)[1], function(r)
  add.pie(z=as.integer(100*topics$omega[r,]),
          x=latlong2[r,1], y=latlong2[r,2], labels=c("","",""),
          radius = 0.4,
          col=c(alpha(color[1],intensity),alpha(color[2],intensity),
                alpha(color[3], intensity), alpha(color[4], intensity),
                alpha(color[5], intensity), alpha(color[6], intensity),
                alpha(color[7], intensity), alpha(color[8], intensity),
                alpha(color[9], intensity), alpha(color[10], intensity),
                alpha(color[11], intensity))));
dev.off()

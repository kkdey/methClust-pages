
library(ggplot2)
library(maps)
library(mapdata)
library(mapplots)

intensity <- 0.9

##################    Australia   geostructure    #############################

latlong <- get(load("../data/LatLongCells_frame.rda"))

idx1 <- which(latlong[,2] > -50 & latlong[,2] < -10)
idx2 <- which(latlong[,1] > 110 & latlong[,1] < 160)
idx <- intersect(idx1, idx2)
length(idx)
latlong2 <- latlong[idx,]

##########################   K = 2   #######################################

topics <- get(load("../output/Australia/methClust_2.rda"))

png(filename="../output/Australia/geostructure_birds_2.png",width = 1000, height = 800)
map("worldHires",
    ylim=c(-50,-10), xlim=c(110,160), # Re-defines the latitude and longitude range
    col = "gray", fill=TRUE, mar=c(0.1,0.1,0.1,0.1))
lapply(1:dim(topics$omega)[1], function(r)
  add.pie(z=as.integer(100*topics$omega[r,]),
          x=latlong2[r,1], y=latlong2[r,2], labels=c("","",""),
          radius = 0.5,
          col=c(alpha(2,0.6),alpha(3,0.6))));
dev.off()

#################################   K = 3 ######################################

topics <- get(load("../output/Australia/methClust_3.rda"))

png(filename="../output/Australia/geostructure_birds_3.png",width = 1000, height = 800)
map("worldHires",
    ylim=c(-50,-10), xlim=c(110,160), # Re-defines the latitude and longitude range
    col = "gray", fill=TRUE, mar=c(0.1,0.1,0.1,0.1))
lapply(1:dim(topics$omega)[1], function(r)
  add.pie(z=as.integer(100*topics$omega[r,]),
          x=latlong2[r,1], y=latlong2[r,2], labels=c("","",""),
          radius = 0.5,
          col=c(alpha(2,0.6),alpha(3,0.6), alpha(4,0.6))));
dev.off()


#############################   K = 4  ####################################

topics <- get(load("../output/Australia/methClust_4.rda"))

png(filename="../output/Australia/geostructure_birds_4.png",width = 1000, height = 800)
map("worldHires",
    ylim=c(-50,-10), xlim=c(110,160), # Re-defines the latitude and longitude range
    col = "gray", fill=TRUE, mar=c(0.1,0.1,0.1,0.1))
lapply(1:dim(topics$omega)[1], function(r)
  add.pie(z=as.integer(100*topics$omega[r,]),
          x=latlong2[r,1], y=latlong2[r,2], labels=c("","",""),
          radius = 0.5,
          col=c(alpha(2,0.6),alpha(3,0.6), alpha(4,0.6), alpha(5,0.6))));
dev.off()


############################   K = 5   ###################################

topics <- get(load("../output/Australia/methClust_5.rda"))
set.seed(200)
color_full=c("red","blue","cornflowerblue","black","cyan","darkblue",
             "brown4","burlywood","darkgoldenrod1","darkgray","deepskyblue","darkkhaki",
             "firebrick","darkorchid","hotpink","green","magenta","yellow", "azure1","azure4");
color = c("red", "cornflowerblue", "cyan", "brown4", "burlywood", "darkgoldenrod1",
          "azure4", "green","deepskyblue","yellow", "azure1")
png(filename="../output/Australia/geostructure_birds_5.png",width = 1000, height = 800)
map("worldHires",
    ylim=c(-50,-10), xlim=c(110,160), # Re-defines the latitude and longitude range
    col = "gray", fill=TRUE, mar=c(0.1,0.1,0.1,0.1))
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


############################   K = 6   ###################################

topics <- get(load("../output/Australia/methClust_6.rda"))
set.seed(200)
color_full=c("red","blue","cornflowerblue","black","cyan","darkblue",
             "brown4","burlywood","darkgoldenrod1","darkgray","deepskyblue","darkkhaki",
             "firebrick","darkorchid","hotpink","green","magenta","yellow", "azure1","azure4");
color = c("orange", "red", "yellow", "deepskyblue", "chartreuse", "blue",
          "darkgoldenrod1","azure4", "deepskyblue","yellow", "azure1")
png(filename="../output/Australia/geostructure_birds_6.png",width = 1000, height = 800)
map("worldHires",
    ylim=c(-50,-10), xlim=c(110,160), # Re-defines the latitude and longitude range
    col = "gray", fill=TRUE, mar=c(0.1,0.1,0.1,0.1))
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


############################   K = 7   ###################################

topics <- get(load("../output/Australia/methClust_7.rda"))
set.seed(200)
color_full=c("red","blue","cornflowerblue","black","cyan","darkblue",
             "brown4","burlywood","darkgoldenrod1","darkgray","deepskyblue","darkkhaki",
             "firebrick","darkorchid","hotpink","green","magenta","yellow", "azure1","azure4");
color = c("orange", "red", "darkgreen", "deepskyblue", "lightgreen", "darksalmon",
          "darkgoldenrod1","azure4", "deepskyblue","yellow", "azure1")
png(filename="../output/Australia/geostructure_birds_7.png",width = 1000, height = 800)
map("worldHires",
    ylim=c(-50,-10), xlim=c(110,160), # Re-defines the latitude and longitude range
    col = "gray", fill=TRUE, mar=c(0.1,0.1,0.1,0.1))
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


###########################     K = 10   #####################################

topics <- get(load(file="../output/Australia/methClust_10.rda"))

set.seed(200)
color_full=c("red","blue","cornflowerblue","black","cyan","darkblue",
             "brown4","burlywood","darkgoldenrod1","darkgray","deepskyblue","darkkhaki",
             "firebrick","darkorchid","hotpink","green","magenta","yellow", "azure1","azure4");
color = c("red", "cornflowerblue", "cyan", "brown4", "burlywood", "darkgoldenrod1",
          "azure4", "green","deepskyblue","yellow", "azure1")
png(filename="../output/Australia/geostructure_birds_10.png",width = 1000, height = 800)
map("worldHires",
    ylim=c(-50,-10), xlim=c(110,160), # Re-defines the latitude and longitude range
    col = "gray", fill=TRUE, mar=c(0.1,0.1,0.1,0.1))
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



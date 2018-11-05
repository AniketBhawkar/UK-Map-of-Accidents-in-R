# Set Working Directory
setwd("C:/Users/MOLAP/Documents/datasets/kaggle/")

# Load Data of 2016
accident.details2016 = read.csv("uk-2016-road-safety-data/dftRoadSafety_Accidents_2016.csv")

accident.fullData2016 = accident.details2016

library(rworldmap)
newmap <- getMap(resolution = "low")
plot(newmap, xlim = c(-5, 5), ylim = c(50, 60), asp = 1)
points(accident.fullData2016$Longitude, accident.fullData2016$Latitude, col = "red", cex = .05)
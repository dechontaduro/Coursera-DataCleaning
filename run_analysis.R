library(dplyr)

#download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "har.zip")
unzip("har.zip")
features <- read.csv(".\\UCI HAR Dataset\\features.txt", header=FALSE, sep=" ", stringsAsFactors = FALSE)
features$var <- gsub("[^a-z0-9]", "", tolower(features[,"V2"]))
features$var <- gsub("^t", "time", features$var)
features$var <- gsub("^f", "frequency", features$var)
features$var <- gsub("acc", "accelerometer", features$var)
features$var <- gsub("gyro", "gyroscope", features$var)
features$var <- gsub("mag", "magnitude", features$var)
features$var <- gsub("std", "standarddeviation", features$var)

activity <- read.csv(".\\UCI HAR Dataset\\activity_labels.txt", header=FALSE, sep=" ", col.names = c("id", "activity"))

strain <- read.csv(".\\UCI HAR Dataset\\train\\subject_train.txt", header=FALSE, col.names = c("subject"))
xtrain <- read.fwf(".\\UCI HAR Dataset\\train\\x_train.txt", widths = rep(16,561), header=FALSE, buffersize = 500, col.names = features$var)
ytrain <- read.csv(".\\UCI HAR Dataset\\train\\y_train.txt", header=FALSE, col.names = c("idact"))

stest <- read.csv(".\\UCI HAR Dataset\\test\\subject_test.txt", header=FALSE, col.names = c("subject"))
xtest <- read.fwf(".\\UCI HAR Dataset\\test\\X_test.txt", widths = rep(16,561), header=FALSE, buffersize = 500, col.names = features$var)
ytest <- read.csv(".\\UCI HAR Dataset\\test\\y_test.txt", header=FALSE, col.names = c("idact"))

xytrain <- cbind(xtrain,ytrain,strain)
xytest <- cbind(xtest,ytest,stest)

xy <- rbind(xytrain, xytest)

xyact <- merge(xy, activity, by.x = "idact", by.y = "id")

xycol <- names(xyact)
xycol <- xycol[grep("mean|standarddeviation|activity|subject", xycol)]
xyactr <- xyact[,xycol]
xyg <- group_by(xyactr, subject, activity)
xytidy <- summarise_each(xyg, funs(mean), -subject, -activity)

write.table(xytidy, file="UCIHAR_SummaryTidyDataset.csv", na="", dec=".", sep=",", quote = FALSE)
run_analysis <- function() {
  ### This function assumes you already have the "UCI HAR Dataset" extracted in your current working directory.
  ### If this is not the case please move to this location (i.e. "C:/Users/user/Documents/R/UCI HAR Dataset").
  
  ### First we read and merge all the training and test data.
  ## features results
  x_tmp1 <- read.table("test/X_test.txt")
  x_tmp2 <- read.table("train/X_train.txt")
  x_data <- rbind(x_tmp1, x_tmp2)
  features <- read.table("features.txt")
  names(x_data) <- features[,2]
  
  ## activity types
  y_tmp1 <- read.table("test/Y_test.txt")
  y_tmp2 <- read.table("train/Y_train.txt")
  y_data <- rbind(y_tmp1, y_tmp2)
  activities <- read.table("activity_labels.txt")
  y_data2 <- as.data.frame(activities[y_data[,1],2])
  names(y_data2) <- "Activity"
  
  ## subject data
  s_tmp1 <- read.table("test/subject_test.txt")
  s_tmp2 <- read.table("train/subject_train.txt")
  s_data <- rbind(s_tmp1, s_tmp2)
  names(s_data) <- "Subject"
  
  ### Now we want to have the data in this order: 1) subject, 2) activity type, 3) features results.
  all_data <- cbind(s_data, y_data2, x_data)
  
  ### Remove all rows except those that represent Mean and StDev.
  mean_names <- as.data.frame(features[grep("mean()",features$V2),2])
  stdev_names <- features[grep("std()",features$V2),2]
  
  final_data <- all_data[colnames(all_data %in% c("Subject", "Activity", mean_names))]
  
}
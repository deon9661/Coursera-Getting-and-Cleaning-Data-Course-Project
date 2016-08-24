
#=======================================================================
# Function: Set_AssignmentWorkingDir
# Description: Set Personal Working Directory 
#=======================================================================

Set_AssignmentWorkingDir <- function() 
{
  setwd("C:/Coursera_CleaningData/Week4/Assignment/")
}

#=======================================================================
# Function: Get_AssignmentData
# Description: Check if Assignment Data Exist - Download and un Zip Data
#=======================================================================

Get_AssignmentData <- function()
{

  Set_AssignmentWorkingDir()
  
  # Check if Data Directory Exist if NOT create
  
  if (!file.exists("./Data"))
  {
    dir.create(file.path(getwd(), "Data"))
  }

  #Check if the zip file exist else download and unzip 
  
  if(!file.exists(paste(getwd(), "Data/Dataset.zip", sep="/")))
  {
    #Download Data File
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","./Data/Dataset.zip")
  
    #unzip file
    unzip ("./Data/Dataset.zip", exdir = "./Data")
  }

}

#=======================================================================
# Function: Merge_TrainingAndTestSets
# Description: 
#=======================================================================

Merge_TrainingAndTestSets <- function()
{
  
  
  library(plyr)
  library(dplyr)
  library(dtplyr)
  library(data.table)
  
  #Set_AssignmentWorkingDir()
  
  Get_AssignmentData()
  
  # Get Column Names from features.txt for data sources x_train and x_test
  
  features <- read.table("./data/UCI HAR Dataset/features.txt", header = FALSE)
  activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE, col.names = c("activityid", "activity"))
  
  # ---------------------------------------------------
  # Read Train data source and Allocate Columns Names 
  # ---------------------------------------------------

  x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE, col.names = features[,2])
  activity_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE, col.names = "activityid")
  subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE, col.names = "subjectid")
  
  # ---------------------------------------------------
  # Read Test data source and Allocate Columns Names
  # ---------------------------------------------------
  
  x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE, col.names = features[,2])
  activity_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE, col.names = "activityid")
  subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE, col.names = "subjectid")
  
  # ---------------------------------------------------
  # Combine date sources Train and Test
  # ---------------------------------------------------
  
  trainData <- cbind(subject_train, activity_train, x_train)
  testData <- cbind(subject_test, activity_test, x_test)
  data <- rbind(testData,trainData)

  # ---------------------------------------------------
  # Combine date sources Train and Test
  # ---------------------------------------------------
  
  # Select out only colums subject, activity, mean and std
  data <- select(data, subjectid, activityid, contains("mean"), contains("std"))
  
  # Merge data with activty lable 
  x <- merge(data, activity_labels, by="activityid")
  
  # Select colums in order subject, activty, ....
  data <- select(x, subjectid, activity, 4:ncol(x))
  
  # ---------------------------------------------------
  # Calculate mean grouped by Subject and Activity
  # ---------------------------------------------------
  
  aggreData <- aggregate(. ~subjectid + activity, data, mean)
  write.table(aggreData, file = "tidydata.txt")
  
}
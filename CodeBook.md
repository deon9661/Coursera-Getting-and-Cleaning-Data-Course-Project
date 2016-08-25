#Getting and Cleaning Data Project Codebook
<br/>Student: Deon Engelbrecht 
<br/>Course: Data Science Specialization – Getting and Cleaning Data 
<br/>Created By: Johns Hopkins University 
<br/>Address: https://www.coursera.org/
##Overview
The codebook will give additional information about the data source, variable and script used to roll up the source data into the summarized tiny data file available in the repository.
##Source Data
Original Data Set Information: https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
<br/>Original Data Set: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##Data Source Attribute Information
<br/>For each record in the dataset it is provided: 
<br/>•	Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
<br/>•	Triaxial Angular velocity from the gyroscope. 
<br/>•	A 561-feature vector with time and frequency domain variables. 
<br/>•	Its activity label. 
<br/>•	An identifier of the subject who carried out the experiment.
##Script Attributes
<br/>Step 1: Function: Merge_TrainingAndTestSets - The main processing function
<br/>Step 2: Get the data for anaylasis
<br/>  2.1 Check if Data Directory Exist if NOT create
<br/>  2.2 Check if the zip file exist else download and unzip 
<br/>  2.3 Download Data File
<br/>  2.4 Unzip file
<br/>Step 3: Get Column Names from features.txt for data sources x_train and x_test
<br/>Step 4: Get Activity labels that will be merge with x_train and x_test dataset
<br/>Step 5: Read Train data source and Allocate Columns Names 
<br/>Step 6: Read Test data source and Allocate Columns Names
<br/>Step 7: Combine date sources: Subject, Activity and x_data
<br/>Step 8: Create one data source combining Test and Train Data
<br/>Step 9: Select out only columns subject, activity, mean and std
<br/>Step 10: Merge data with activity label to show description
<br/>Step 11: Select columns in order subject, activity, ....
<br/>Step 12: Calculate mean grouped by Subject and Activity
<br/>Step 13: Write aggregated data to file "tidydata.txt"

## Data Varibles
Activity Data from “Y_train.txt” and “Y_test.txt”
<br/> Subject from “subject_train.txt” and subject_test.txt"
<br/> Features from “features.txt”
<br/> Activity Descriptions from “activity_labels.txt”


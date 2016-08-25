#Getting and Cleaning Data Project Codebook
##Student: Deon Engelbrecht 
##Course: Data Science Specialization – Getting and Cleaning Data 
Created By: Johns Hopkins University 
Address: https://www.coursera.org/
Overview
The codebook will give additional information about the data source, variable and script used to roll up the source data into the summarized tiny data file available in the repository.
Source Data
Original Data Set Information: https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Original Data Set: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Data Source Attribute Information
For each record in the dataset it is provided: 
•	Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
•	Triaxial Angular velocity from the gyroscope. 
•	A 561-feature vector with time and frequency domain variables. 
•	Its activity label. 
•	An identifier of the subject who carried out the experiment.

Script Attributes
Step 1: Function: Merge_TrainingAndTestSets - The main processing function
Step 2: Get the data for anaylasis
  2.1 Check if Data Directory Exist if NOT create
  2.2 Check if the zip file exist else download and unzip 
  2.3 Download Data File
  2.4 Unzip file
    
  
Step 3: Get Column Names from features.txt for data sources x_train and x_test
Step 4: Get Activity labels that will be merge with x_train and x_test dataset
Step 5: Read Train data source and Allocate Columns Names 
Step 6: Read Test data source and Allocate Columns Names
Step 7: Combine date sources: Subject, Activity and x_data
Step 8: Create one data source combining Test and Train Data
Step 9: Select out only columns subject, activity, mean and std
Step 10: Merge data with activity label to show description
Step 11: Select columns in order subject, activity, ....
Step 12: Calculate mean grouped by Subject and Activity
Step 13: Write aggregated data to file "tidydata.txt"

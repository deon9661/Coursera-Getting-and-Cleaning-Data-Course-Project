#Coursera Assignment: Getting and Cleaning Data Course Project
<br/>Student: Deon Engelbrecht
<br/>Course: Data Science Specialization – Getting and Cleaning Data
<br/>Created By: Johns Hopkins University 
<br/>Address: https://www.coursera.org/  
<br/>
##Overview
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
<br/>
##Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
<br/>Link: https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
<br/>
##Source Data Used:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##Components
<br/>1) Readme.md 
<br/>2) run_analysis.R: R Script that process the data source to produce the tinydata.txt file output
<br/>3) tidydata.txt:This data set has been produced by the R script “run_analysis”
<br/>4) Codebook.md: Explains the data and R script 


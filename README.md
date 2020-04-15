
# Peer-graded Assignment: Getting and Cleaning Data Course Project (Week 4)

This repository contains files for Coursera:Getting and Cleaning Data: Week4 Project. Files are listed as following:

* codebook.md
* readme.md
* run_analysis.R
* tidy_data.txt

## Introduction

Wearable gadgets has become part of our life, which has resulted wearable computing as the exciting area in the data sience field. Manufacturers of these technologies are developing the most advanved algorithms to attract new users. The run_analysis.R file contains the code that analyzes data set collected with embedded accelerometer and gyroscope from the Samsung Galaxy S II smartphone. 

30 volunteers within an age bracket of 19-48 years helped carry out the expreiments with six different activities wearing Samsung Galaxy S II phone on their waist. Data set collected from 70% volunteers was selected for generating training data and 30% as test data. 

A video experiment can be found at this [link](https://youtu.be/XOEN9W05_4A).

Here is the [dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) for the experiment.



## Analysis

The run_analysis.R script does the following

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

RStudio or R or any other IDE that supports R can be used to run_analysis.R script. 

Deatails of the variables are elaborted in codebook.md file

Second independent tidy data set creates in step 5 above is exported as txt file. 



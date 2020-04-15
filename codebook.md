# Code Book

The run_analysis.R file downloads dataset, prepares data, and follows the 5 steps required by the course project assignment. 

1. #### Download the dataset
   + Downloads the dataset a zip file.
   
2. #### Unzip the dataset
   
3. #### Reads dataset and assigns to variables
   + features: The features in this dataset collected from the embedded accelerometer and gyroscope in Samsung Galaxy SII smartphone. 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50 Hz was captured. (561 columns, 2 rows)
   + activities: List of activities performed ((WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
   (6 rows, 2 columns)
   + X_train: Recorded features of training data. (7352 rows, 561 columns)
   + Y_train: Activity code of training data. (7352 rows, 1 column)
   + sub_train: Training data of volunteer subject observed. Total subject= 30. 70% for training. Training subject= 21. (7352       rows, 1 column)
   + X_test: Recorded features of test data. (2947rows, 561 columns)
   + Y_test: Activity code of test data. (2947rows, 1 column)
   + sub_test: Test data of volunteer subject observed. Total subject= 30. 30% for test. Test subject= 9 (2947rows, 1 column)
   
4. #### Merges the training and test dataset
   + X_total: Using rbind() function X_train and X_test is merged. created (10299 rows, 561 columns)
   + Y_Total: Using rbind() function Y_train and Y_test is merged. created (10299 rows, 1 column)
   + sub_all: Using rbind() function sub_train and sub_test is merged. created (10299 rows, 1 column)
   
5. #### Extracts only the measurement on the mean and standard deviation for each measurement
    + Extracts measurement on mean and standard deviation (std) features for each measurement in X_total. 

6. #### Assigns column names
    + Appropriately labels X_total with descriptive features.
    + Provides descriptive activity names to Y_total which contained activity codes[1:6] . 
    + Assigns column name "subjectID" to sub_all.
    
7: #### Merge final dataset
    + Using cbind() function X_total, activityID, sub_all is merged creating 10299 rows and 81 columns.
    
8: #### From the dataset in step 7, creates a second independent tidy dataset with the average of each variable for each activity and each subject. 
    + tidy_data is created by grouping activity and each subject, and taking the mean of each variable. 
    
9: #### Export tidy dataset
    + Export tidy_data into tidy_data.txt file
    
10: #### Optional 
    + Check if exported data is tidy.
 
   
   

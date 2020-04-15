# Code Book

The run_analysis.R file downloads dataset, prepares data, and follows the 5 steps as required by the course project assignment. 

#### Download the dataset
   + Downloads the dataset a zip file.
   
#### Unzip the dataset
   
1. #### Reads dataset and assigns to variables
   1.1. features: The features in this dataset is collected from the embedded accelerometer and gyroscope in Samsung Galaxy SII smartphone. 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50 Hz was captured. (561 columns, 2 rows)
   
   1.2. activities: List of activities performed (1. WALKING, 2. WALKING_UPSTAIRS, 3. WALKING_DOWNSTAIRS, 4. SITTING, 5. STANDING, 6.LAYING).
   (6 rows, 2 columns)
   
   1.3: Reading training data
   + X_train: Recorded features of training data. (7352 rows, 561 columns)
   + Y_train: Activity code of training data. (7352 rows, 1 column)
   + sub_train: Training data of volunteer subject observed. Total subject= 30. 70% for training. Training subject= 21. (7352       rows, 1 column)
   
   1.4: Reading test data
   + X_test: Recorded features of test data. (2947rows, 561 columns)
   + Y_test: Activity code of test data. (2947rows, 1 column)
   + sub_test: Test data of volunteer subject observed. Total subject= 30. 30% for test. Test subject= 9 (2947rows, 1 column)
   
   1.5 Merges the training and test dataset
   + X_total: Using rbind() function X_train and X_test is merged. created (10299 rows, 561 columns)
   + Y_Total: Using rbind() function Y_train and Y_test is merged. created (10299 rows, 1 column)
   + sub_all: Using rbind() function sub_train and sub_test is merged. created (10299 rows, 1 column)
   + merge_data: Using cbind() function X_total, Y_total, sub_all is merged creating 10299 rows and 563 columns
   
2. #### Extracts only the measurement on the mean and standard deviation for each measurement
    + Extracts measurement on mean and standard deviation (std) features for each measurement in X_total. 

3. #### Uses descriptive activity names to name the activities in the dataset
     + Assigns column names to Y_total as "activityID".

4. #### Appropriately labels the dataset with descriptive variable names.
     + Assigns column names to X_total with respective features. 
     + Assigns column names to sub_all as "subjectID"
    
5. #### From the dataset in step 4, creates a second independent tidy dataset with the average of each variable for each  activity and each subject. 
    + tidy_data (180 rows, 81 columns) is created by grouping activity and each subject, and taking the mean of each variable. 
    + Export tidy_data into tidy_data.txt file
    

    
## Measurements of Tidy dataset


1. "activityID"
2. "subjectID"
3. "tBodyAcc.mean...X"
4. "tBodyAcc.mean...Y"
5. "tBodyAcc.mean...Z"
6. "tBodyAcc.std...X"
7. "tBodyAcc.std...Y"
8. "tBodyAcc.std...Z"
9. "tGravityAcc.mean...X"
10. "tGravityAcc.mean...Y"
11. "tGravityAcc.mean...Z"
12. "tGravityAcc.std...X"
13. "tGravityAcc.std...Y"
14. "tGravityAcc.std...Z"
15. "tBodyAccJerk.mean...X"
16. "tBodyAccJerk.mean...Y"
17. "tBodyAccJerk.mean...Z"
18. "tBodyAccJerk.std...X"
19. "tBodyAccJerk.std...Y"
20. "tBodyAccJerk.std...Z"
21. "tBodyGyro.mean...X"
22. "tBodyGyro.mean...Y"
23. "tBodyGyro.mean...Z"
24. "tBodyGyro.std...X"
25. "tBodyGyro.std...Y"
26. "tBodyGyro.std...Z"
27. "tBodyGyroJerk.mean...X"
28. "tBodyGyroJerk.mean...Y"
29. "tBodyGyroJerk.mean...Z"
30. "tBodyGyroJerk.std...X"
31. "tBodyGyroJerk.std...Y"
32. "tBodyGyroJerk.std...Z"
33. "tBodyAccMag.mean.."
34. "tBodyAccMag.std.."
35. "tGravityAccMag.mean.."
36. "tGravityAccMag.std.."
37. "tBodyAccJerkMag.mean.."
38. "tBodyAccJerkMag.std.."
39. "tBodyGyroMag.mean.."
40. "tBodyGyroMag.std.."
41. "tBodyGyroJerkMag.mean.."
42. "tBodyGyroJerkMag.std.."
43. "fBodyAcc.mean...X"
44. "fBodyAcc.mean...Y"
45. "fBodyAcc.mean...Z"
46. "fBodyAcc.std...X"
47. "fBodyAcc.std...Y"
48. "fBodyAcc.std...Z"
49. "fBodyAcc.meanFreq...X"
50. "fBodyAcc.meanFreq...Y"
51. "fBodyAcc.meanFreq...Z"
52. "fBodyAccJerk.mean...X"
53. "fBodyAccJerk.mean...Y"
54. "fBodyAccJerk.mean...Z"
55. "fBodyAccJerk.std...X"
56. "fBodyAccJerk.std...Y"
57. "fBodyAccJerk.std...Z"
58. "fBodyAccJerk.meanFreq...X"
59. "fBodyAccJerk.meanFreq...Y"
60. "fBodyAccJerk.meanFreq...Z"
61. "fBodyGyro.mean...X"
62. "fBodyGyro.mean...Y"
63. "fBodyGyro.mean...Z"
64. "fBodyGyro.std...X"
65. "fBodyGyro.std...Y"
66. "fBodyGyro.std...Z"
67. "fBodyGyro.meanFreq...X"
68. "fBodyGyro.meanFreq...Y"
69. "fBodyGyro.meanFreq...Z"
70. "fBodyAccMag.mean.."
71. "fBodyAccMag.std.."
72. "fBodyAccMag.meanFreq.."
73. "fBodyBodyAccJerkMag.mean.."
74. "fBodyBodyAccJerkMag.std.."
75. "fBodyBodyAccJerkMag.meanFreq.."
76. "fBodyBodyGyroMag.mean.."
77. "fBodyBodyGyroMag.std.."
78. "fBodyBodyGyroMag.meanFreq.."
79. "fBodyBodyGyroJerkMag.mean.."
80. "fBodyBodyGyroJerkMag.std.."
81. "fBodyBodyGyroJerkMag.meanFreq.."

 
   
   




library(dplyr)

#1: Download the dataset
if(!file.exists("./data")){dir.create("./data")}
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, destfile = "./data/UCI HAR Dataset.zip")

#2: Unzip the dataset
unzip(zipfile = "./data/UCI HAR Dataset.zip", exdir = "./data")

#3: Reading dataset and assign dataframes

#3.1: Read features vector
features <- read.table("./data/UCI HAR Dataset/features.txt")
#dim(features) #561, 2
#head(features)
#names(features) 


#3.2: Read activity_labels
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
#dim(activities) #6, 2
#head(activities)
#names(activities) 

#3.3: Read training data
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
#dim(X_train) #7352, 561
#head(X_train)
#names(X_train) 
Y_train <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
#dim(Y_train) #7352, 1
#head(Y_train)
#names(Y_train) 
sub_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
#dim(sub_train) #7352, 1
#head(sub_train)
#names(sub_train) 

#3.4: Read test data
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
#dim(X_test) #2947, 561
#head(X_test)
#names(X_test) 
Y_test <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")
#dim(Y_test) #2947, 1
#head(X_test)
#names(X_test) 
sub_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
#dim(sub_test) #2947, 1
#head(sub_test)
#names(sub_test)

#4: Merges the training and the test datasets rbind() is used
X_total <- rbind(X_train, X_test) #X_train and X_test have same number of columns (561)
Y_total <- rbind(Y_train, Y_test) #Y_train and Y_test have same number of columns (1)
sub_all <- rbind(sub_train, sub_test) #sub_train and sub_test have same number of columns (1)
#dim(X_total) #10,299, 561
#dim(Y_total) #10,299, 1
#dim(sub_all) #10,299, 1



#5: Extracts only the measurements on the mean and standard deviation 
#   for each measurement
selected_features <- features[grep("mean|std",features[,2]),]
X_total <- X_total[,selected_features[,1]]
#dim(X_total) #10,299, 79

#6: Assigning column names

#6.1: Appropriately labels the data set with descriptive variable names
colnames(X_total) <- features[selected_features[,1],2]

#6.2: Assigns column name for activities and
# Uses descriptive activity names to name the activities in the data set
colnames(Y_total) <- "activityID"
activityID <- factor(Y_total$activityID, labels = as.character(activities[,2]))

#6.3: Assigns column name for subjects
colnames(sub_all) <- "subjectID"


#7: merges final dataset
merged_dataset<- cbind(X_total, activityID, sub_all)
dim(merged_dataset) #10299,81
str(mergeddataset)

#8: From the data set in step 7, creates a second, 
# independent tidy data set with the average of each variable 
# for each activity and each subject.


tidy_data <- merged_dataset %>%
                group_by(activityID, subjectID) %>%
                summarize_all(funs(mean))
#dim(tidy_data) #180,81


#9: exports writes tidy dataset as a txt file
write.table(tidy_data, "tidy_data.txt", row.name=FALSE, col.name=TRUE)

#10: Optional Steps 
#data <- read.table( "tidy_data.txt", header=TRUE)
#head(data,2)


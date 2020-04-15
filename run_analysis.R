


library(dplyr)

# Download the dataset
if(!file.exists("./data")){dir.create("./data")}
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, destfile = "./data/UCI HAR Dataset.zip")

#Unzip the dataset
unzip(zipfile = "./data/UCI HAR Dataset.zip", exdir = "./data")

#1: Read data set ans assign to variables

#1.1: Read features vector
features <- read.table("./data/UCI HAR Dataset/features.txt")
#dim(features) #561, 2



#1.2: Read activity_labels
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
#dim(activities) #6, 2


#1.3: Read training dataset
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
#dim(X_train) #7352, 561
Y_train <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
#dim(Y_train) #7352, 1
sub_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
#dim(sub_train) #7352, 1


#1.4: Read test dataset
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
#dim(X_test) #2947, 561
Y_test <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")
#dim(Y_test) #2947, 1
sub_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
#dim(sub_test) #2947, 1


#1.5: Merges the training and the test data set using rbin() and c(bind)
X_total <- rbind(X_train, X_test) #X_train and X_test have same number of columns (561)
Y_total <- rbind(Y_train, Y_test) #Y_train and Y_test have same number of columns (1)
sub_all <- rbind(sub_train, sub_test) #sub_train and sub_test have same number of columns (1)
#dim(X_total) #10,299, 561
#dim(Y_total) #10,299, 1
#dim(sub_all) #10,299, 1
merged_data<- cbind(X_total, Y_total, sub_all)
#dim(merged_data) #10,299 rows and 563 columns



#2: Extracts only the measurements on the mean and standard deviation for each measurement
selected_features <- features[grep("mean|std",features[,2]),]
X_total <- X_total[,selected_features[,1]]
#dim(X_total) #10,299, 79


#3 Uses descriptive activity names to name the activities in the dataset
colnames(Y_total) <- "activityID"
activityID <- factor(Y_total$activityID, labels = as.character(activities[,2]))

#4: Appropriately labels the dataset with descriptive variable names
colnames(X_total) <- features[selected_features[,1],2]
colnames(sub_all) <- "subjectID"
merged_dataset<- cbind(X_total, activityID, sub_all)
dim(merged_dataset) #10299,81
#str(mergeddataset) 

#5: From the data set in step 4, creates a second, 
# independent tidy data set with the average of each variable 
# for each activity and each subject.


tidy_data <- merged_dataset %>%
                group_by(activityID, subjectID) %>%
                summarize_all(funs(mean))
#dim(tidy_data) #180,81


#5: Exports writes tidy dataset as a txt file
write.table(tidy_data, "tidy_data.txt", row.name=FALSE, col.name=TRUE)




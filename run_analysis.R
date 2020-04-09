library(dplyr)

unzip(zipfile="UCI HAR Dataset.zip", exdir="./data")
path <-"./data/UCI HAR Dataset"
list.files(path, recursive=TRUE)
#list.files("./data/UCI HAR Dataset/test")
#list.files("./data/UCI HAR Dataset/test/Inertial Signals")
#list.files("./data/UCI HAR Dataset/train")
#list.files("./data/UCI HAR Dataset/train/Inertial Signals")

#filepath <- file.path("./data/UCI HAR Dataset")
#files <- list.files(filepath, recursive=TRUE)
#files
path_train <- "./data/UCI HAR Dataset/train"
path_test <- "./data/UCI HAR Dataset/test"

#Reading training data
Xtraining <- read.table(file.path(path_train,"X_train.txt"), header=TRUE)
head(Xtraining)
Ytraining <- read.table(file.path(path_train,"Y_train.txt"), header=TRUE)
head(Ytraining)
subject_training <-read.table(file.path(path_train,"subject_train.txt"), header=TRUE) 
head(subject_training)
#reading test data
Xtest <- read.table(file.path(path_test,"X_test.txt"), header=TRUE)
head(Xtest)
Ytest <- read.table(file.path(path_test,"Y_test.txt"), header=TRUE)
head(Ytest)
subject_test <-read.table(file.path(path_test,"subject_test.txt"), header=TRUE) 
head(subject_test)
features <- read.table(file.path(path,"features.txt"), header=TRUE)
head(features)
activity_Labels <- read.table(file.path(path,"activity_labels.txt"), header=TRUE)
head(activity_Labels)
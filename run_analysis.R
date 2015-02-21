## Load data.table, reshape2, and dplyr packages
library(data.table)
library(reshape2)
library(dplyr)

## Read each piece of the necessary data in
Train_data <- read.table("UCI HAR Dataset/train/X_train.txt") ## 7352x561
Test_data <- read.table("UCI HAR Dataset/test/X_test.txt") ## 2947x561
Train_Activity <- read.table("UCI HAR Dataset/train/y_train.txt") ## 7352x1
Test_Activity <- read.table("UCI HAR Dataset/test/y_test.txt") ## 2947x1
Train_Subject <- read.table("UCI HAR Dataset/train/subject_train.txt") ## 7352x1
Test_Subject <- read.table("UCI HAR Dataset/test/subject_test.txt") ## 2947x1
Features <- read.table("UCI HAR Dataset/features.txt") ## 561x2
Activity_Labels <- read.table("UCI HAR Dataset/activity_labels.txt") ## 6x2

## Bind Train_data to Train_Subject and Train_Activity
Train <- cbind(Train_Activity, Train_Subject, Train_data) ## 7352x563

## Bind Test_data to Test_Subject and Test_Activity
Test <- cbind(Test_Activity, Test_Subject, Test_data) ## 2947x563

## Bind Train set to Test set
All_Data <- rbind(Train, Test) ## 10299x563

## Make All_Data and Features into data tables 
All_Data <- data.table(All_Data)
Features <- data.table(Features)

## Set the names of Features and the first two columns in All_Data
All_Data <- setnames(All_Data, 3:563, as.character(Features[[2]]))
All_Data <- setnames(All_Data, 1:2, c("Activity_Number", "Subject_ID"))

## Extract only mean and standard deviation Measurements
All_Data <-as.data.frame(All_Data)[,c(1:8, 43:48, 83:88, 123:128, 163:168,
203:204, 216:217, 229:230, 242:243, 255:256, 268:273, 347:352, 426:431,
505:506, 531:532, 544:545)]

## Merge All_Data with Activity_Labels by activity number
All_Data <- merge(Activity_Labels, All_Data, by.x="V1", by.y="Activity_Number")

## Rename descriptive Activity Type label and get rid of activity number column
All_Data <- data.table(All_Data)
All_Data <- setnames(All_Data, 2, "Activity_Type")
All_Data <- as.data.frame(All_Data)[,2:67]

## Create Tidy Set of means for each measurement per Activity/Subject
Tidy_Set <- group_by(All_Data, Activity_Type, Subject_ID)
Tidy_Set <- summarise_each(Tidy_Set, funs(mean))

## Write out the Tidy Set
write.table(Tidy_Set, file="Tidy_Data_Set.txt", row.names=F)


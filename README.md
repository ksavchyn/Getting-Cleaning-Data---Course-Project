<<<<<<< HEAD
The script in run_analysis.R utilizes the data which can be found at
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following set of steps describes how the code in run_analysis.R works:
1. The data.table, reshape2, dplyr packages are loaded
2. Each of the following sets of data which are included in the UCI HAR Dataset (as per the link above) are read in using read.table() and given descriptive variable names:
	* X_train.txt
	* X_test.txt
	* y_train.txt
	* y_test.txt
	* subject_train.txt
	* subject_test.txt
	* features.txt
	* activity_labels.txt
3. The y_train. txt data is bound to the subject_train.txt and X_train.txt sets using cbind() in order to create the 
complete Train data set.
4. The y_test.txt data is bound to the subject_test.txt and X_test.txt sets using cbind() in order to create the
complete Test data set.
5. The Train and Test data sets from steps 3 and 4 are bound together using rbind() in order to create the complete
data set (All_Data).
6. All_Data from step 5 and the Features data from features.txt are each transformed into a data.table to enable the use of the setnames() function to set the measurements listed in features.txt as variable names in All_Data. Furthermore, the column which includes the [y_train.txt and y_test.txt] data (Activity numbers), and the column which includes the [subject_train.txt and subject_test.txt] data (Subject ID) in All_Data are given the variable names "Activity Number" and "Subject ID", respectively.
7. After analyzing the list of measurements in features.txt, those features with 'mean()' or 'std()' in their name
are extracted from the entire set and this is updated as the new All_Data set.
8. The new All_Data set is merged with the data in activity_labels.txt by the number of the activity in each set.
9. The new column of descriptive activity types as they were defined in activity_labels.txt is renamed 
"Activity_Type" and the column with activity numbers is removed. This new set is updated as the new All_Data.
This set represents the merged Train and Test data sets, including just the mean and standard deviation 
measurements from the original sets of data, and which use descriptive activity names (as required by steps 1,
2, 3, and 4 of the assignment).
10. The All_Data from step 9 is grouped by Activity_Type and Subject_ID, respectively, and is renamed Tidy_Set.
11. The data in step 10 is summarized by the average applied to each combination of Activity_Type and Subject_ID, and Tidy_Set is updated as this new summary table.
12. The new Tidy_Set table is written out using write.table() which created a file titled "Tidy_Data_Set.txt"
=======
# Getting-Cleaning-Data---Course-Project
This is the repo for the course project for the Getting and Cleaning Data course.
>>>>>>> be272f79c488664751a6897d67743d2e47627167

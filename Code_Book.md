## Data Dictionary - Tidy Data Set

1. Activity_Type (Categorical Variable):

        Type of acvity as defined in activity_labels.txt:
		* WALKING
 		* WALKING_UPSTAIRS
 		* WALKING_DOWNSTAIRS
 		* SITTING
 		* STANDING
 		* LAYING
2. Subject_ID (Categorical Variable):

	An identifier of the subject who carried out the experiment. There were 30 subjects, therefore this is a range of numbers from 1 to 30. 

3 - 66. Measurement Mean (Continuous Variable):

  	These 64 variables have been calculated by extracting all the mean and standard deviation measurements from original features.txt, where measurements that included 'mean()' or 'std()' within the variable name. The mean for each of these measurements was taken for each combination of Activity_Type and Subject_ID. Their names are consistent with the names in features.txt. 
	
=========================================================================================
### The table below shows the number and the name of each variable in the data set:

| Variable.Number|Variable.Name               |
|---------------:|:---------------------------|
|               1|Activity_Type               |
|               2|Subject_ID                  |
|               3|tBodyAcc.mean...X           |
|               4|tBodyAcc.mean...Y           |
|               5|tBodyAcc.mean...Z           |
|               6|tBodyAcc.std...X            |
|               7|tBodyAcc.std...Y            |
|               8|tBodyAcc.std...Z            |
|               9|tGravityAcc.mean...X        |
|              10|tGravityAcc.mean...Y        |
|              11|tGravityAcc.mean...Z        |
|              12|tGravityAcc.std...X         |
|              13|tGravityAcc.std...Y         |
|              14|tGravityAcc.std...Z         |
|              15|tBodyAccJerk.mean...X       |
|              16|tBodyAccJerk.mean...Y       |
|              17|tBodyAccJerk.mean...Z       |
|              18|tBodyAccJerk.std...X        |
|              19|tBodyAccJerk.std...Y        |
|              20|tBodyAccJerk.std...Z        |
|              21|tBodyGyro.mean...X          |
|              22|tBodyGyro.mean...Y          |
|              23|tBodyGyro.mean...Z          |
|              24|tBodyGyro.std...X           |
|              25|tBodyGyro.std...Y           |
|              26|tBodyGyro.std...Z           |
|              27|tBodyGyroJerk.mean...X      |
|              28|tBodyGyroJerk.mean...Y      |
|              29|tBodyGyroJerk.mean...Z      |
|              30|tBodyGyroJerk.std...X       |
|              31|tBodyGyroJerk.std...Y       |
|              32|tBodyGyroJerk.std...Z       |
|              33|tBodyAccMag.mean..          |
|              34|tBodyAccMag.std..           |
|              35|tGravityAccMag.mean..       |
|              36|tGravityAccMag.std..        |
|              37|tBodyAccJerkMag.mean..      |
|              38|tBodyAccJerkMag.std..       |
|              39|tBodyGyroMag.mean..         |
|              40|tBodyGyroMag.std..          |
|              41|tBodyGyroJerkMag.mean..     |
|              42|tBodyGyroJerkMag.std..      |
|              43|fBodyAcc.mean...X           |
|              44|fBodyAcc.mean...Y           |
|              45|fBodyAcc.mean...Z           |
|              46|fBodyAcc.std...X            |
|              47|fBodyAcc.std...Y            |
|              48|fBodyAcc.std...Z            |
|              49|fBodyAccJerk.mean...X       |
|              50|fBodyAccJerk.mean...Y       |
|              51|fBodyAccJerk.mean...Z       |
|              52|fBodyAccJerk.std...X        |
|              53|fBodyAccJerk.std...Y        |
|              54|fBodyAccJerk.std...Z        |
|              55|fBodyGyro.mean...X          |
|              56|fBodyGyro.mean...Y          |
|              57|fBodyGyro.mean...Z          |
|              58|fBodyGyro.std...X           |
|              59|fBodyGyro.std...Y           |
|              60|fBodyGyro.std...Z           |
|              61|fBodyAccMag.mean..          |
|              62|fBodyAccMag.std..           |
|              63|fBodyBodyGyroMag.mean..     |
|              64|fBodyBodyGyroMag.std..      |
|              65|fBodyBodyGyroJerkMag.mean.. |
|              66|fBodyBodyGyroJerkMag.std..  |

# Variables

**subject**: Integer from 1 to 30, indicating which subject performed the activity being measured

**activity**: Named activity from the following set, describing what the subject was doing while the measurements were collected.
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

(Note: The following variables are averages for each subject and activity of the values contained in the input data for the following variables, and the descriptions are based on the descriptions in the original data codebook in the file features_info.txt. More information about each variable can be found in that code book.)

**tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z**: The average of the body linear acceleration signal mean values (in X,Y,Z axis) for the given subject and activity.

**tBodyAcc-std()-X, tBodyAcc-std()-Y, tBodyAcc-std()-Z**: The average of the body linear acceleration signal (in X,Y,Z axis) standard deviation values for the given subject and activity.

**tGravityAcc-mean()-X, tGravityAcc-mean()-Y, tGravityAcc-mean()-Z**: The average of the gravity acceleration signal (in X,Y,Z axis) mean values for the given subject and activity.

**tGravityAcc-std()-X, tGravityAcc-std()-Y, tGravityAcc-std()-Z**: The average of the body acceleration signal (in X,Y,Z axis) standard deviation values for the given subject and activity.

**tBodyAccJerk-mean()-X, tBodyAccJerk-mean()-Y, tBodyAccJerk-mean()-Z**: The average of the body linear acceleration Jerk signal (in X,Y,Z axis) mean values for the given subject and activity.

**tBodyAccJerk-std()-X, tBodyAccJerk-std()-Y, tBodyAccJerk-std()-Z**: The average of the body linear acceleration Jerk signal (in X,Y,Z axis) standard deviation values for the given subject and activity.      

**tBodyGyro-mean()-X, tBodyGyro-mean()-Y, tBodyGyro-mean()-Z**: The average of the body angular velocity (in X,Y,Z axis) mean values for the given subject and activity.

**tBodyGyro-std()-X, tBodyGyro-std()-Y, tBodyGyro-std()-Z**: The average of the body angular velocity (in X,Y,Z axis) standard deviation values for the given subject and activity.

**tBodyGyroJerk-mean()-X, tBodyGyroJerk-mean()-Y, tBodyGyroJerk-mean()-Z**: The average of the body angular velocity Jerk signal (in X,Y,Z axis) mean values for the given subject and activity.

**tBodyGyroJerk-std()-X, tBodyGyroJerk-std()-Y, tBodyGyroJerk-std()-Z**: The average of the body angular velocity Jerk signal (in X,Y,Z axis) standard deviation values for the given subject and activity. 

**tBodyAccMag-mean(), tBodyAccMag-std()**: The average of the mean and standard deviation values for the given subject and activity, of the magnitude of the three-dimensional body acceleration signals, calculated using the Euclidean norm.

**tGravityAccMag-mean(), tGravityAccMag-std()**: The average of the mean and standard deviation values for the given subject and activity, of the magnitude of the three-dimensional gravity acceleration signals, calculated using the Euclidean norm.

**tBodyAccJerkMag-mean(), tBodyAccJerkMag-std()**: The average of the mean and standard deviation values for the given subject and activity, of the magnitude of the three-dimensional body linear acceleration Jerk signals, calculated using the Euclidean norm.

**tBodyGyroMag-mean(), tBodyGyroMag-std()**: The average of the mean and standard deviation values for the given subject and activity, of the magnitude of the three-dimensional body angular velocity signals, calculated using the Euclidean norm.

**tBodyGyroJerkMag-mean(), tBodyGyroJerkMag-std()**: The average of the mean and standard deviation values for the given subject and activity, of the magnitude of the three-dimensional body angular velocity Jerk signals, calculated using the Euclidean norm.    

**fBodyAcc-mean()-X, fBodyAcc-mean()-Y, fBodyAcc-mean()-Z**: The average of the fast fourier transform (FFT) of the body linear acceleration signal mean values (in X,Y,Z axis) for the given subject and activity.

**fBodyAcc-std()-X, fBodyAcc-std()-Y, fBodyAcc-std()-Z**: The average of the fast fourier transform (FFT) of the body linear acceleration signal (in X,Y,Z axis) standard deviation values for the given subject and activity.

**fBodyAccJerk-mean()-X, fBodyAccJerk-mean()-Y, fBodyAccJerk-mean()-Z**: The average of the fast fourier transform (FFT) of the body linear acceleration Jerk signal (in X,Y,Z axis) mean values for the given subject and activity.

**fBodyAccJerk-std()-X, fBodyAccJerk-std()-Y, fBodyAccJerk-std()-Z**: The average of the fast fourier transform (FFT) of the body linear acceleration Jerk signal (in X,Y,Z axis) standard deviation values for the given subject and activity.

**fBodyGyro-mean()-X, fBodyGyro-mean()-Y, fBodyGyro-mean()-Z**: The average of the fast fourier transform (FFT) of the body angular velocity (in X,Y,Z axis) mean values for the given subject and activity.

**fBodyGyro-std()-X, fBodyGyro-std()-Y, fBodyGyro-std()-Z**: The average of the fast fourier transform (FFT) of the body angular velocity (in X,Y,Z axis) standard deviation values for the given subject and activity.

**fBodyAccMag-mean(), fBodyAccMag-std()**: The average of the mean and standard deviation values for the given subject and activity, of the fast fourier transform (FFT) of the magnitude of the three-dimensional body acceleration signals, calculated using the Euclidean norm.

**fBodyBodyAccJerkMag-mean(), fBodyBodyAccJerkMag-std()**: The average of the mean and standard deviation values for the given subject and activity, of the fast fourier transform (FFT) of the magnitude of the three-dimensional body acceleration Jerk signals, calculated using the Euclidean norm.

**fBodyBodyGyroMag-mean(), fBodyBodyGyroMag-std()**: The average of the mean and standard deviation values for the given subject and activity, of the fast fourier transform (FFT) of the magnitude of the three-dimensional body angular velocity signals, calculated using the Euclidean norm.

**fBodyBodyGyroJerkMag-mean(), fBodyBodyGyroJerkMag-std()**: The average of the mean and standard deviation values for the given subject and activity, of the fast fourier transform (FFT) of the magnitude of the three-dimensional body angular velocity Jerk signals, calculated using the Euclidean norm.

# Data

**Input Data - From UCI HAR Dataset zip file**

activity_labels.txt: A list of numeric activity values and their labels, used to give descriptive labels for the activities performed by the subjects.

features.txt: A file containing all the variable names for the measurements in the "X_" files in the test and train folders.

train/subject_train.txt: A file containing the subject number of the subject performing each observation during training.

train/y_train.txt: A file containing the activity performed by the subject during each observation during training, in numeric form

train/X_train.txt: A file containing values for each of the measurement variables in the features.txt file, for each observation during training.

test/subject_test.txt: A file containing the subject number of the subject performing each observation during testing.

test/y_test.txt: A file containing the activity performed by the subject during each observation during testing, in numeric form

test/X_test.txt: A file containing values for each of the measurement variables in the features.txt file, for each observation during testing.

**Output Data**

tidy_data_set.txt: A file containing the subject, descriptive activity name, and average of each mean and std deviation variable (as described in the Variables section) for each subject/activity pair. This file will be written after running run_analysis.R on the input data files, and can be read back into R by using the 'data <- read.table("./tidy_data_set.txt",header=TRUE)' command, followed by 'View(data)' to visualize the table if desired.

# Transformations

run_analysis.R will read in the measurement X_ files, subset the measurements pertaining to mean and standard deviation, and paste together these observations from the train and test data sets.  It then attaches the corresponding subject and activity data from the train and test data sets, again pasting them together with rbind, and replacing the numerical activity values in the observations with their activity labels for readability and tidiness. Once the data is all together with the subject, activity, and mean/std variables in a single combined data set, this set is then melted and dcast to obtain the average (mean) of each selected variable for each combination of subject and activity throughout the training and testing, and this summary data is then output with write.table to the tidy_data_set file, with a header row followed by one row per subject/activity pair (observation), with each mean/std deviation-related variable's average in its own column.

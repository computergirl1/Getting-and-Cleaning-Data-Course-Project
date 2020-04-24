# Getting-and-Cleaning-Data-Course-Project

This project contains a script called run_analysis.R which takes the data from the UCI HAR Dataset available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and does the following:
1. Merges the training and the test sets to create one data set. (this is broken up into separate steps in the file, with appropriate comments)
2. Extracts only the measurements on the mean and standard deviation for each measurement. (I'm interpreting this to mean extracting the measurement variables with the mean() and std() notations, thus using grep to extract those variable names from the features file)
3. Uses descriptive activity names to name the activities in the data set (uses the activity_labels to create a factor variable and replaces the activities in the y_ files with these factor values)
4. Appropriately labels the data set with descriptive variable names. (this was easier to do as I went along in steps 1-3, so I commented each time I labeled a column in the previous steps within the script)
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. (using a melt with subject and activity as the id's and the other measurement data as the variables, then using dcast to get the mean of each measurement variable for each activity and subject)

In addition, it writes the final tidy data set to a file called "tidy_data_set.txt" using write.table, so the user can read in the file using read.table("./tidy_data_set.txt",header=TRUE) and then view the data as desired.

The repository contains the following files:
1. This README
2. run_analysis.R - script which takes as input the training and test data sets from the UCI HAR Dataset
3. CodeBook.md - Contains a description of the variables in the tidy_data_set and how the run_analysis script transformed the data from the initial data set into the tidy data set.

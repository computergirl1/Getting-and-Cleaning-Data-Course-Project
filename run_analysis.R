#1. Merge the training and the test sets to create one data set.

#Read the feature values from the train and test "X_" files and combine them into feature_vals
measurements_train = read.table("./train/X_train.txt")
measurements_test = read.table("./test/X_test.txt")
measurements <- rbind(measurements_train,measurements_test)

#2. Extract only the measurements on the mean and standard deviation for each measurement.

#Read the feature variable names from the features.txt file and use it to name the measurement columns
# (Labels for measurements come here - note 4 below)
features = read.table("./features.txt",col.names=list("num","variableName"),stringsAsFactors=FALSE)
names(measurements) <- features$variableName

#Select only the measurement variables whose names contain 'mean(' or 'std(', and subset the .
mean_std_vars <- grep("(mean\\()|(std\\()",features$variableName,value=TRUE)
mean_std_measurements <- measurements[,mean_std_vars]

#1. (cont.) Read in the subject and activity values for train and test and merge them.
#Read the subject values from train and test "subject_" files and combine them into subject_vals
# (Label for subject column is set here in read.table - note 4 below)
subject_train = read.table("./train/subject_train.txt",col.names=list("subject"))
subject_test = read.table("./test/subject_test.txt",col.names=list("subject"))
subject_vals <- rbind(subject_train,subject_test)

#Read the activity values from the train and test "y_" files and combine them into activity_vals
# (Label for activity column is set here in read.table - note 4 below)
activity_vals_train = read.table("./train/y_train.txt",col.names="activity")
activity_vals_test = read.table("./test/y_test.txt",col.names="activity")
activity_vals <- rbind(activity_vals_train,activity_vals_test)

#3. Use descriptive activity names to name the activities in the data set.
#Read the activity labels from the activity_labels.txt file and use them to
#give descriptive activity names to the activities in the data set.
activity_labels = read.table("./activity_labels.txt",col.names=list("activity","label"))
activity_vals_named <- mutate(activity_vals,activity=factor(activity,labels=activity_labels$label))

#1. (cont.) Finally, combine all the columns to create the combined data set.
#Combine the subject, named activity values, and mean and std deviation measurement values 
#to make a single combined data set
combined_data_set <- cbind(subject_vals,activity_vals_named,mean_std_measurements)

#4. Appropriately label the data set with descriptive variable names:
# Note: this was already done above, labeling the measurement variables using the
# feature labels, and labeling the subject and activity column names when reading them 
# from the subject_ and y_ input files.


#5. From the data set in step 4, creates a second, independent 
#   tidy data set with the average of each variable for each activity and each subject.
#melt the data by subject and activity, then use dcast to get the average for each variable
meltedData <- melt(combined_data_set,id=c("subject","activity"))
tidy_data <- dcast(meltedData,subject+activity~variable,mean)

#write the tidy data set of averaged mean and std deviation values to a file
write.table(tidy_data,"./tidy_data_set.txt")

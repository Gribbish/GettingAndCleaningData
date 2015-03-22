About the data

	The purpose of this project was to demonstrate the ability to collect, work with, and clean a data set. The goal was to prepare tidy data that can be used for later analysis.
	The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


About the script

R script called run_analysis.R that does the following:

1. Reads the the training and the test sets, and then merges them to create one data set.
	This was made in couple of steps: 
a) reading measurement data (X_train.txt)
b) reading label file (features.txt)
c) labeling measurement data
d) reading and labeling data on type of activity performed (y_train.txt)
e) reading and labeling data on subject ID's (subject_train.txt)
d) binding all three data sets
The same steps were made for test data
e) binding training and test data


2. Extracts only the measurements on the mean and standard deviation for each measurement. 
a) subset of data frame made in previous step was taken, containing only variables representing subject ID and type of activity
b) using 'grepl()' function,another subset of data set made in previous step was taken, containing only variables with 'mean' or 'std' in ther name
c) two subsets were then binded

3. Uses descriptive activity names to name the activities in the data set
	Since 'Type_of_activity' was integer variable, it was redefined as factor variable, and then each level was labeled with type of activity.

4. Appropriately labels the data set with descriptive variable names. 
	Using 'gsub()' function, '()' was removed from each variable label.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
a) data set was reshaped (melted), and measurements were put into rows
b) new data set was made, with the average of each variable for each activity and each subject (using 'aggregate.()' function). 

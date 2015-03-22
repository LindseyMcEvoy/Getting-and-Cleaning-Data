Getting and Cleaning Data Course Project

The data used to complete this project is sourced from The UCI Machine Learning Repository. A description of the data can be found at The UCI Machine Learning Repository. 

1: Merges the training and the test sets to create one data set.

Read in the data from the following sources:

features.txt
activity_labels.txt
subject_train.txt
X_train.txt
y_train.txt
subject_test.txt
X_test.txt
y_test.txt


X_train, y_train, X_test, y_test, subject_train, and subject_test contain data from the downloaded files
X, y, and subject merge the test and train data sets

2: Extracts only the measurements on the mean and standard deviation for each measurement.
features has the names for the X data set
mean_std, is used to extract only the measurements on the mean and standard deviation

3: Uses descriptive activity names to name the activities in the data set
activities has the names for the y data set

4: Appropriately labels the data set with descriptive activity names.
X, y, and subject are all merged into one data set, Data

5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy_data creates a data set with the average of each veriable for each activity and subject

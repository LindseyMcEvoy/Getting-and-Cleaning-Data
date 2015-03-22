#Run analysis

library(plyr)

#Step 1: Merge the training and the test sets to create one data set
X_test = read.table("test/X_test.txt", header = F)
y_test = read.table("test/y_test.txt", header = F)
subject_test = read.table("test/subject_test.txt", header = F)

X_train = read.table("train/X_train.txt", header = F)
y_train = read.table("train/y_train.txt", header = F)
subject_train = read.table("train/subject_train.txt", header = F)

X = rbind(X_train, X_test)
y = rbind(y_train, y_test)
subject = rbind(subject_train, subject_test)


#Step 2: Extract only the measurements on the mean and standard deviation for each measurement
features = read.table("features.txt", header = F)

mean_std = grep("mean\\(\\)|std\\(\\)", features[, 2])
X = X[, mean_std]
names(X) = features[mean_std, 2]

str(X)

#Step 3: Use descriptive activity names to name the activities in the data set
activities = read.table("activity_labels.txt", header = F)

y[, 1] = activities[y[, 1], 2]
names(y) = "activity"


#Step 4: Appropriately label the data set with descriptive variable names
names(subject) = "subject"

Data = cbind(X, y, subject)

names(Data)


#Step 5: Create a second, independent tidy data set with the average of each variable for each activity and each subject
tidy = aggregate(.~subject + activity, Data, mean)
tidy = tidy[order(tidy$subject, tidy$activity),]

write.table(tidy, "tidy_data.txt", row.name = F)


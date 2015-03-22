# Please follow the README.md first

###################################################################
# 1. Merges the training and the test sets to create one data set.
###################################################################
x_train_file <- read.table("train/X_train.txt")
x_test_file <- read.table("test/X_test.txt")
x <- rbind(x_train_file, x_test_file )

y_train_file <- read.table("train/y_train.txt")
y_test_file <- read.table("test/y_test.txt")
y <- rbind(y_train_file, y_test_file)

subject_train_file <- read.table("train/subject_train.txt")
subject_test_file <- read.table("test/subject_test.txt")
s <- rbind(subject_train_file,subject_test_file)

activity_labels_file <- read.table("activity_labels.txt")

###########################################################################
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
###########################################################################
features_file <- read.table("features.txt")
headers <- features_file[,2]

names(x_test_file) <- headers
names(x_train_file) <- headers

mean_std <- grepl("mean\\(\\)|std\\(\\)", headers)

###########################################################################
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive names.
###########################################################################
x_test_mean_std <- x_test_file[,mean_std]
x_train_mean_std <- x_train_file[,mean_std]
x <- rbind(x_test_mean_std, x_train_mean_std)

#combine
merged <- cbind(s, y, x)
names(merged)[1] <- "SubjectID"
names(merged)[2] <- "Activity"

###########################################################################
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
###########################################################################
# set a meaningful name for the columns
agg <- aggregate(. ~ SubjectID + Activity, data=merged, FUN = mean)
agg$Activity <- factor(agg$Activity, labels=activity_labels_file[,2])
write.table(agg, file="./tidy.txt", sep="\t", row.names=FALSE)







Code Book
### Original data
- [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
- [description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

`run_analysis.R` performs the following to clean up the data:
* Test and train data were loaded separately. Merges the training and test sets to create one data set.
* Reads `features.txt` and extracts only the measurements on the mean and standard deviation for each measurement.
* Associate an additional column with descriptive activity names as specified in `activity_labels.txt`.
* An aggregation was performed on all columns of the data frame, grouping by SubjectID and Activity. This yielded an appropriate 180 observations (30 subjects * 6 activities) of the 68 variables.
* After the script is executed, it will output tab separated values to a text file (named `tidy.txt`)

APPENDIX
- mean: Mean value
- std: Standard deviation

#### Data Columns
1. **SubjectID**: ID indicating the subject from whom data was collected
2. **Activity**: Activity being performed
3.  tBodyAcc-mean()-X
4.  tBodyAcc-mean()-Y
5.	tBodyAcc-mean()-Z
6.	tBodyAcc-std()-X
7.	tBodyAcc-std()-Y
8.	tBodyAcc-std()-Z
9.	tGravityAcc-mean()-X
10.	tGravityAcc-mean()-Y
11.	tGravityAcc-mean()-Z
12.	tGravityAcc-std()-X
13.	tGravityAcc-std()-Y
14.	tGravityAcc-std()-Z
15.	tBodyAccJerk-mean()-X
16.	tBodyAccJerk-mean()-Y
17.	tBodyAccJerk-mean()-Z
18.	tBodyAccJerk-std()-X
19.	tBodyAccJerk-std()-Y
20.	tBodyAccJerk-std()-Z
21.	tBodyGyro-mean()-X
22.	tBodyGyro-mean()-Y
23.	tBodyGyro-mean()-Z
24.	tBodyGyro-std()-X
25.	tBodyGyro-std()-Y
26.	tBodyGyro-std()-Z
27.	tBodyGyroJerk-mean()-X
28.	tBodyGyroJerk-mean()-Y
29.	tBodyGyroJerk-mean()-Z
30.	tBodyGyroJerk-std()-X
31.	tBodyGyroJerk-std()-Y
32.	tBodyGyroJerk-std()-Z
33.	tBodyAccMag-mean()
34.	tBodyAccMag-std()
35.	tGravityAccMag-mean()
36.	tGravityAccMag-std()
37.	tBodyAccJerkMag-mean()
38.	tBodyAccJerkMag-std()
39.	tBodyGyroMag-mean()
40.	tBodyGyroMag-std()
41.	tBodyGyroJerkMag-mean()
42.	tBodyGyroJerkMag-std()
43.	fBodyAcc-mean()-X
44.	fBodyAcc-mean()-Y
45.	fBodyAcc-mean()-Z
46.	fBodyAcc-std()-X
47.	fBodyAcc-std()-Y
48.	fBodyAcc-std()-Z
49.	fBodyAccJerk-mean()-X
50.	fBodyAccJerk-mean()-Y
51.	fBodyAccJerk-mean()-Z
52	fBodyAccJerk-std()-X
53.	fBodyAccJerk-std()-Y
54.	fBodyAccJerk-std()-Z
55.	fBodyGyro-mean()-X
56.	fBodyGyro-mean()-Y
57. fBodyGyro-mean()-Z
58.	fBodyGyro-std()-X
59.	fBodyGyro-std()-Y
60.	fBodyGyro-std()-Z
61.	fBodyAccMag-mean()
62.	fBodyAccMag-std()
63.	fBodyBodyAccJerkMag-mean()
64.	fBodyBodyAccJerkMag-std()
65.	fBodyBodyGyroMag-mean()
66.	fBodyBodyGyroMag-std()
67.	fBodyBodyGyroJerkMag-mean()
68.	fBodyBodyGyroJerkMag-std()

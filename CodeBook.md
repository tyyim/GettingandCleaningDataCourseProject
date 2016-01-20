#Code Book
This file describes the variables, the data, and any transformations or work that were performed to clean up the data and generate the output

## *Data*

The [Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) is download from the course website.
It contains a README in the main folder which explains the content and two sub folders called "train" & "test" containing the datasets for the training and test datasets correspondingly.
Each dataset resides in 3 files: subject_[test|train].txt, X_[test|train\.txt & y_[test|train].txt.
* **subject** is a single column data specifying the corresponding testing subject from the 30 participants
* **X** is the feature vector set with 561 time and frequency domain variables. 
* **y** is the Label file indicating that the activity that the subject is doing during the mesaurement.

Note: the files inside the *Inertial Signals* subfolder are not processed in this project

## *Variables*

1.	"Subject" - Subject # who performed the activity
2.	"ActivityPerformed" - label of the activity performed during the measurements
All the Measurements of mean or standard deviation:
3.	"tBodyAccmeanX"
4.	"tBodyAccmeanY"
5.	"tBodyAccmeanZ"
6.	"tBodyAccstdX"
7.	"tBodyAccstdY"
8.	"tBodyAccstdZ"
9.	"tGravityAccmeanX"
10.	"tGravityAccmeanY"
11.	"tGravityAccmeanZ"
12.	"tGravityAccstdX"
13.	"tGravityAccstdY"
14.	"tGravityAccstdZ"
15.	"tBodyAccJerkmeanX"
16.	"tBodyAccJerkmeanY"
17.	"tBodyAccJerkmeanZ"
18.	"tBodyAccJerkstdX"
19.	"tBodyAccJerkstdY"
20.	"tBodyAccJerkstdZ"
21.	"tBodyGyromeanX"
22.	"tBodyGyromeanY"
23.	"tBodyGyromeanZ"
24.	"tBodyGyrostdX"
25.	"tBodyGyrostdY"
26.	"tBodyGyrostdZ"
27.	"tBodyGyroJerkmeanX"
28.	"tBodyGyroJerkmeanY"
29.	"tBodyGyroJerkmeanZ"
30.	"tBodyGyroJerkstdX"
31.	"tBodyGyroJerkstdY"
32.	"tBodyGyroJerkstdZ"
33.	"tBodyAccMagmean"
34.	"tBodyAccMagstd"
35.	"tGravityAccMagmean"
36.	"tGravityAccMagstd"
37.	"tBodyAccJerkMagmean"
38.	"tBodyAccJerkMagstd"
39.	"tBodyGyroMagmean"
40.	"tBodyGyroMagstd"
41.	"tBodyGyroJerkMagmean"
42.	"tBodyGyroJerkMagstd"
43.	"fBodyAccmeanX"
44.	"fBodyAccmeanY"
45.	"fBodyAccmeanZ"
46.	"fBodyAccstdX"
47.	"fBodyAccstdY"
48.	"fBodyAccstdZ"
49.	"fBodyAccmeanFreqX"
50.	"fBodyAccmeanFreqY"
51.	"fBodyAccmeanFreqZ"
52.	"fBodyAccJerkmeanX"
53.	"fBodyAccJerkmeanY"
54.	"fBodyAccJerkmeanZ"
55.	"fBodyAccJerkstdX"
56.	"fBodyAccJerkstdY"
57.	"fBodyAccJerkstdZ"
58.	"fBodyAccJerkmeanFreqX"
59.	"fBodyAccJerkmeanFreqY"
60.	"fBodyAccJerkmeanFreqZ"
61.	"fBodyGyromeanX"
62.	"fBodyGyromeanY"
63.	"fBodyGyromeanZ"
64.	"fBodyGyrostdX"
65.	"fBodyGyrostdY"
66.	"fBodyGyrostdZ"
67.	"fBodyGyromeanFreqX"
68.	"fBodyGyromeanFreqY"
69.	"fBodyGyromeanFreqZ"
70.	"fBodyAccMagmean"
71.	"fBodyAccMagstd"
72.	"fBodyAccMagmeanFreq"
73.	"fBodyBodyAccJerkMagmean"
74.	"fBodyBodyAccJerkMagstd"
75.	"fBodyBodyAccJerkMagmeanFreq"
76.	"fBodyBodyGyroMagmean"
77.	"fBodyBodyGyroMagstd"
78.	"fBodyBodyGyroMagmeanFreq"
79.	"fBodyBodyGyroJerkMagmean"
80.	"fBodyBodyGyroJerkMagstd"
81.	"fBodyBodyGyroJerkMagmeanFreq"
82.	"angle(tBodyAccMeangravity)"
83.	"angle(tBodyAccJerkMean)gravityMean)"
84.	"angle(tBodyGyroMeangravityMean)"
85.	"angle(tBodyGyroJerkMeangravityMean)"
86.	"angle(XgravityMean)"
87.	"angle(YgravityMean)"
88.	"angle(ZgravityMean)"


## *Transformation & Data Cleaning*
1. The 3 Training Set files and 3 Test Set files are read
2. 2 Sets are merged using rbind
3. Feauture List are read from file"features.txt"
4. activity lable are read from "activity_lables.txt"
5. symbols such as "()" or "," "-" are removed
6. Duplicated Features are found in the list and are removed
7. Only features with "mean" or "std" are selected
8. Using the activity lables to append the activity performed into the set
9. Using the subject table to append a subject number into the set
10. Apply group by on subject and actvitiy performed
11. Getting the output from the summarize operations and getting the mean for each variables


## *Output*
The tidy set is output into a file called "TidySet.txt"

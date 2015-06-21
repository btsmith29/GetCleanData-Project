# Data Dictionary

## Introduction

The provided tidy dataset is a derivative of the 
*Human Activity Recognition Using Smartphones Dataset* 
produced by Anguita et al [1] and forms part of the Course Project for the
author's enrolment in the *Getting and Cleaning Data* Coursera course (John Hopkins
Bloomberg School of Public Health) [2].

The original dataset can be obtained at: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
In the study, the authors captured output from the accelerometer and gyroscope of
a Samsung Galaxy II smartphone across a range of activities involving 30 volunteers
(Anguita et al).

## Transformations

The initial dataset provided by Anguita et al. has been transformed in accordance
with the requirements of the course project.  Specifically, the following steps
have been completed:

1. the *training* and *test* datasets have been combined;
1. the measurement names were standardised by removing '()', and replacing '-' with '.';
1. all but the mean and standard deviation measurements were discarded;
1. grouping by subject and activity, the average of each measurement was taken;

This output corresponds to the supplied tidy data set.

The tidy dataset, a Readme on how the analysis can be repeated, and this
code book is on the author's [github account](https://github.com/btsmith29/GetCleanData-Project).

With respect to point 2 above, it was determined that measures with respect to 
*meanFreq* should not be included, as these are not simple means.  Indeed, 
taking one particular example:

    fBodyAcc-mean()-X

    fBodyAcc-meanFreq()-X

, it is clear that the *meanFreq* measure is in addition to the simple mean, and
should not therefore be included.  This resulted in **33** mean measurements 
and **33** standard deviation measurements being selected for the tidy dataset.

The resulting dimensions for the tidy data set are 180 rows by 68 columns.

## Variables

The following variables comprise the tidy dataset:

* Subject 
    * Identifier for subject/participant in the study;
    * 1...30
* Activity 
    * Activity performed by the test subject whilst measurements were taken;
    * WALKING|WALKING_UPSTAIRS|WALKING_DOWNSTAIRS|SITTING|STANDING|LAYING
* Measurements
    * measurements containing 'Acc' refer to acceleration since they relate to 
      the accelerometer output;
    * measurements containing 'Gyro' refer to angular velocity since they relate
      to the gyroscope output;
    * mag refers to magnitude;
    * all base measurements (before averaging) were normalised by -1 to 1 by 
      the original authors;
    * a full description of the variables is available in the original dataset
      by using a combination of the features_info.txt and the README.txt files
      and is not repeated here;

Measurement | Description | Domain
------------|-------------|-------
tBodyAcc.mean.X    |	Avg of the tBodyAcc mean (x-plane)	|	time
tBodyAcc.mean.Y	|	Avg of the tBodyAcc mean (y-plane)	|	time
tBodyAcc.mean.Z	|	Avg of the tBodyAcc mean (z-plane)	|	time
tGravityAcc.mean.X	|	Avg of the tGravityAcc mean (x-plane)	|	time
tGravityAcc.mean.Y	|	Avg of the tGravityAcc mean (y-plane)	|	time
tGravityAcc.mean.Z	|	Avg of the tGravityAcc mean (z-plane)	|	time
tBodyAccJerk.mean.X	|	Avg of the tBodyAccJerk mean (x-plane)	|	time
tBodyAccJerk.mean.Y	|	Avg of the tBodyAccJerk mean (y-plane)	|	time
tBodyAccJerk.mean.Z	|	Avg of the tBodyAccJerk mean (z-plane)	|	time
tBodyGyro.mean.X	|	Avg of the tBodyGyro mean (x-plane)	|	time
tBodyGyro.mean.Y	|	Avg of the tBodyGyro mean (y-plane)	|	time
tBodyGyro.mean.Z	|	Avg of the tBodyGyro mean (z-plane)	|	time
tBodyGyroJerk.mean.X	|	Avg of the tBodyGyroJerk mean (x-plane)	|	time
tBodyGyroJerk.mean.Y	|	Avg of the tBodyGyroJerk mean (y-plane)	|	time
tBodyGyroJerk.mean.Z	|	Avg of the tBodyGyroJerk mean (z-plane)	|	time
tBodyAccMag.mean	|	Avg of the tBodyAccMag mean 	|	time
tGravityAccMag.mean	|	Avg of the tGravityAccMag mean 	|	time
tBodyAccJerkMag.mean	|	Avg of the tBodyAccJerkMag mean 	|	time
tBodyGyroMag.mean	|	Avg of the tBodyGyroMag mean 	|	time
tBodyGyroJerkMag.mean	|	Avg of the tBodyGyroJerkMag mean 	|	time
fBodyAcc.mean.X	|	Avg of the fBodyAcc mean (x-plane)	|	frequency
fBodyAcc.mean.Y	|	Avg of the fBodyAcc mean (y-plane)	|	frequency
fBodyAcc.mean.Z	|	Avg of the fBodyAcc mean (z-plane)	|	frequency
fBodyAccJerk.mean.X	|	Avg of the fBodyAccJerk mean (x-plane)	|	frequency
fBodyAccJerk.mean.Y	|	Avg of the fBodyAccJerk mean (y-plane)	|	frequency
fBodyAccJerk.mean.Z	|	Avg of the fBodyAccJerk mean (z-plane)	|	frequency
fBodyGyro.mean.X	|	Avg of the fBodyGyro mean (x-plane)	|	frequency
fBodyGyro.mean.Y	|	Avg of the fBodyGyro mean (y-plane)	|	frequency
fBodyGyro.mean.Z	|	Avg of the fBodyGyro mean (z-plane)	|	frequency
fBodyAccMag.mean	|	Avg of the fBodyAccMag mean 	|	frequency
fBodyBodyAccJerkMag.mean	|	Avg of the fBodyBodyAccJerkMag mean 	|	frequency
fBodyBodyGyroMag.mean	|	Avg of the fBodyBodyGyroMag mean 	|	frequency
fBodyBodyGyroJerkMag.mean	|	Avg of the fBodyBodyGyroJerkMag mean 	|	frequency
tBodyAcc.std.X	|	Avg of the tBodyAcc standard deviation (x-plane)	|	time
tBodyAcc.std.Y	|	Avg of the tBodyAcc standard deviation (y-plane)	|	time
tBodyAcc.std.Z	|	Avg of the tBodyAcc standard deviation (z-plane)	|	time
tGravityAcc.std.X	|	Avg of the tGravityAcc standard deviation (x-plane)	|	time
tGravityAcc.std.Y	|	Avg of the tGravityAcc standard deviation (y-plane)	|	time
tGravityAcc.std.Z	|	Avg of the tGravityAcc standard deviation (z-plane)	|	time
tBodyAccJerk.std.X	|	Avg of the tBodyAccJerk standard deviation (x-plane)	|	time
tBodyAccJerk.std.Y	|	Avg of the tBodyAccJerk standard deviation (y-plane)	|	time
tBodyAccJerk.std.Z	|	Avg of the tBodyAccJerk standard deviation (z-plane)	|	time
tBodyGyro.std.X	|	Avg of the tBodyGyro standard deviation (x-plane)	|	time
tBodyGyro.std.Y	|	Avg of the tBodyGyro standard deviation (y-plane)	|	time
tBodyGyro.std.Z	|	Avg of the tBodyGyro standard deviation (z-plane)	|	time
tBodyGyroJerk.std.X	|	Avg of the tBodyGyroJerk standard deviation (x-plane)	|	time
tBodyGyroJerk.std.Y	|	Avg of the tBodyGyroJerk standard deviation (y-plane)	|	time
tBodyGyroJerk.std.Z	|	Avg of the tBodyGyroJerk standard deviation (z-plane)	|	time
tBodyAccMag.std	|	Avg of the tBodyAccMag standard deviation 	|	time
tGravityAccMag.std	|	Avg of the tGravityAccMag standard deviation 	|	time
tBodyAccJerkMag.std	|	Avg of the tBodyAccJerkMag standard deviation 	|	time
tBodyGyroMag.std	|	Avg of the tBodyGyroMag standard deviation 	|	time
tBodyGyroJerkMag.std	|	Avg of the tBodyGyroJerkMag standard deviation 	|	time
fBodyAcc.std.X	|	Avg of the fBodyAcc standard deviation (x-plane)	|	frequency
fBodyAcc.std.Y	|	Avg of the fBodyAcc standard deviation (y-plane)	|	frequency
fBodyAcc.std.Z	|	Avg of the fBodyAcc standard deviation (z-plane)	|	frequency
fBodyAccJerk.std.X	|	Avg of the fBodyAccJerk standard deviation (x-plane)	|	frequency
fBodyAccJerk.std.Y	|	Avg of the fBodyAccJerk standard deviation (y-plane)	|	frequency
fBodyAccJerk.std.Z	|	Avg of the fBodyAccJerk standard deviation (z-plane)	|	frequency
fBodyGyro.std.X	|	Avg of the fBodyGyro standard deviation (x-plane)	|	frequency
fBodyGyro.std.Y	|	Avg of the fBodyGyro standard deviation (y-plane)	|	frequency
fBodyGyro.std.Z	|	Avg of the fBodyGyro standard deviation (z-plane)	|	frequency
fBodyAccMag.std	|	Avg of the fBodyAccMag standard deviation 	|	frequency
fBodyBodyAccJerkMag.std	|	Avg of the fBodyBodyAccJerkMag standard deviation 	|	frequency
fBodyBodyGyroMag.std	|	Avg of the fBodyBodyGyroMag standard deviation 	|	frequency
fBodyBodyGyroJerkMag.std	|	Avg of the fBodyBodyGyroJerkMag standard deviation 	|	frequency


## Why is this dataset tidy?

Considering the elements of tidy data outlined by Leek[3], the following are met:

1. Each measurement is in one column;
1. Each observation is in a separate row and corresponds clearly to a subject
and activity;
1. The dataset captures a collection of related measurements; a single table is 
appropriate;
1. Although terse, the measurement variable names are human readable, and are
documented in this code book;

With reference to point 4 above, it was felt that expanding the column names to
be more readable would have led to names of excessive length, for example:

    fBodyBodyAccJerkMag
    
would become

    fBodyBodyLinearAccelerationMagnitude
    
Although terse, it was felt by the author of this course project that the
shorter names (with the original brackets '()' removed) would suffice.

## References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[2] Jeff Leek, Roger D. Peng, Brian Caffo. Getting and Cleaning Data. 
https://www.coursera.org/course/getdata

[3] Jeff Leek. How to share data with a statistician. 
https://github.com/jtleek/datasharing
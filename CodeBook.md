# Data Dictionary

## Introduction

The provided tidy dataset is a derivative of the 
*Human Activity Recognition Using Smartphones* Dataset 
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

## Variables

The following variables comprise the tidy dataset:

* Subject 
    * Identifier for subject/participant in the study
    * 1...30
* Activity 
    * Activity performed by the test subject whilst measurements were taken
    * WALKING|WALKING_UPSTAIRS|WALKING_DOWNSTAIRS|SITTING|STANDING|LAYING
* Measurements
    * the prefix f denotes frequency domain signals;
    * the prefix t denotes time domain signals;
    * measurements containing 'Acc' pertain to an accelerometer;
    * measurements containing 'Gyro' pertain to a Gyroscope;
    * mag refers to magnitude;
    * all base measurements (before averaging) were normalised by -1 to 1 by 
      the original authors;

Measurement | Description
------------|----------
tBodyAcc.mean.X    |	Average of the tBodyAcc mean (x-plane)
tBodyAcc.mean.Y	|	Average of the tBodyAcc mean (y-plane)
tBodyAcc.mean.Z	|	Average of the tBodyAcc mean (z-plane)
tGravityAcc.mean.X	|	Average of the tGravityAcc mean (x-plane)
tGravityAcc.mean.Y	|	Average of the tGravityAcc mean (y-plane)
tGravityAcc.mean.Z	|	Average of the tGravityAcc mean (z-plane)
tBodyAccJerk.mean.X	|	Average of the tBodyAccJerk mean (x-plane)
tBodyAccJerk.mean.Y	|	Average of the tBodyAccJerk mean (y-plane)
tBodyAccJerk.mean.Z	|	Average of the tBodyAccJerk mean (z-plane)
tBodyGyro.mean.X	|	Average of the tBodyGyro mean (x-plane)
tBodyGyro.mean.Y	|	Average of the tBodyGyro mean (y-plane)
tBodyGyro.mean.Z	|	Average of the tBodyGyro mean (z-plane)
tBodyGyroJerk.mean.X	|	Average of the tBodyGyroJerk mean (x-plane)
tBodyGyroJerk.mean.Y	|	Average of the tBodyGyroJerk mean (y-plane)
tBodyGyroJerk.mean.Z	|	Average of the tBodyGyroJerk mean (z-plane)
tBodyAccMag.mean	|	Average of the tBodyAccMag mean 
tGravityAccMag.mean	|	Average of the tGravityAccMag mean 
tBodyAccJerkMag.mean	|	Average of the tBodyAccJerkMag mean 
tBodyGyroMag.mean	|	Average of the tBodyGyroMag mean 
tBodyGyroJerkMag.mean	|	Average of the tBodyGyroJerkMag mean 
fBodyAcc.mean.X	|	Average of the fBodyAcc mean (x-plane)
fBodyAcc.mean.Y	|	Average of the fBodyAcc mean (y-plane)
fBodyAcc.mean.Z	|	Average of the fBodyAcc mean (z-plane)
fBodyAccJerk.mean.X	|	Average of the fBodyAccJerk mean (x-plane)
fBodyAccJerk.mean.Y	|	Average of the fBodyAccJerk mean (y-plane)
fBodyAccJerk.mean.Z	|	Average of the fBodyAccJerk mean (z-plane)
fBodyGyro.mean.X	|	Average of the fBodyGyro mean (x-plane)
fBodyGyro.mean.Y	|	Average of the fBodyGyro mean (y-plane)
fBodyGyro.mean.Z	|	Average of the fBodyGyro mean (z-plane)
fBodyAccMag.mean	|	Average of the fBodyAccMag mean 
fBodyBodyAccJerkMag.mean	|	Average of the fBodyBodyAccJerkMag mean 
fBodyBodyGyroMag.mean	|	Average of the fBodyBodyGyroMag mean 
fBodyBodyGyroJerkMag.mean	|	Average of the fBodyBodyGyroJerkMag mean 
tBodyAcc.std.X	|	Average of the tBodyAcc standard deviation (x-plane)
tBodyAcc.std.Y	|	Average of the tBodyAcc standard deviation (y-plane)
tBodyAcc.std.Z	|	Average of the tBodyAcc standard deviation (z-plane)
tGravityAcc.std.X	|	Average of the tGravityAcc standard deviation (x-plane)
tGravityAcc.std.Y	|	Average of the tGravityAcc standard deviation (y-plane)
tGravityAcc.std.Z	|	Average of the tGravityAcc standard deviation (z-plane)
tBodyAccJerk.std.X	|	Average of the tBodyAccJerk standard deviation (x-plane)
tBodyAccJerk.std.Y	|	Average of the tBodyAccJerk standard deviation (y-plane)
tBodyAccJerk.std.Z	|	Average of the tBodyAccJerk standard deviation (z-plane)
tBodyGyro.std.X	|	Average of the tBodyGyro standard deviation (x-plane)
tBodyGyro.std.Y	|	Average of the tBodyGyro standard deviation (y-plane)
tBodyGyro.std.Z	|	Average of the tBodyGyro standard deviation (z-plane)
tBodyGyroJerk.std.X	|	Average of the tBodyGyroJerk standard deviation (x-plane)
tBodyGyroJerk.std.Y	|	Average of the tBodyGyroJerk standard deviation (y-plane)
tBodyGyroJerk.std.Z	|	Average of the tBodyGyroJerk standard deviation (z-plane)
tBodyAccMag.std	|	Average of the tBodyAccMag standard deviation 
tGravityAccMag.std	|	Average of the tGravityAccMag standard deviation 
tBodyAccJerkMag.std	|	Average of the tBodyAccJerkMag standard deviation 
tBodyGyroMag.std	|	Average of the tBodyGyroMag standard deviation 
tBodyGyroJerkMag.std	|	Average of the tBodyGyroJerkMag standard deviation 
fBodyAcc.std.X	|	Average of the fBodyAcc standard deviation (x-plane)
fBodyAcc.std.Y	|	Average of the fBodyAcc standard deviation (y-plane)
fBodyAcc.std.Z	|	Average of the fBodyAcc standard deviation (z-plane)
fBodyAccJerk.std.X	|	Average of the fBodyAccJerk standard deviation (x-plane)
fBodyAccJerk.std.Y	|	Average of the fBodyAccJerk standard deviation (y-plane)
fBodyAccJerk.std.Z	|	Average of the fBodyAccJerk standard deviation (z-plane)
fBodyGyro.std.X	|	Average of the fBodyGyro standard deviation (x-plane)
fBodyGyro.std.Y	|	Average of the fBodyGyro standard deviation (y-plane)
fBodyGyro.std.Z	|	Average of the fBodyGyro standard deviation (z-plane)
fBodyAccMag.std	|	Average of the fBodyAccMag standard deviation 
fBodyBodyAccJerkMag.std	|	Average of the fBodyBodyAccJerkMag standard deviation 
fBodyBodyGyroMag.std	|	Average of the fBodyBodyGyroMag standard deviation 
fBodyBodyGyroJerkMag.std	|	Average of the fBodyBodyGyroJerkMag standard deviation 

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

    fBodyBodyAccelerometerJerkMagnitude
    
Although terse, it was felt by the author of this course project that the
shorter names (with the original brackets '()' removed) would suffice.

## References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[2] Jeff Leek, Roger D. Peng, Brian Caffo. Getting and Cleaning Data. 
https://www.coursera.org/course/getdata

[3] Jeff Leek. How to share data with a statistician. 
https://github.com/jtleek/datasharing
# Readme

## Introduction

This repository constitutes the author's submission for the course project of
the *Getting and Cleaning Data* Coursera course (John Hopkins
Bloomberg School of Public Health).

This file in particular details the contents of this repository and provides
details on how to re-run the analysis completed.

The overall aim of the project was to take a raw dataset, combine partitions,
subset and label and finally summarise the data, with the goal of creating a
tidy dataset.

## Files

1. README.md - this file;

2. CodeBook.md - the code book, or data dictionary, for the tidy dataset;

3. run_analysis.R - an R script for transforming the raw data into the tidy data;

4. tidyDat.txt - the tidy data (not required, but provided in case
there was an issue with the Coursera upload);

## Re-running the Analysis

1. Download the raw data from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
1. Create a directory called 'data' in your working directory;
1. Extract the contents of the zip file into the 'data' directory;
1. Place run_analysis.R into your working directory; 
1. Source the run_analysis.R file in a R session;
1. Call **runAnalysis()** ;
1. The output, in the form of a file called tidyDat.txt, will be output to the
working directory;

The analysis requires the 'dplyr' package.

## Loading the Tidy Dataset

After downloading tidyDat.txt, or following the steps above, it should be
possible to load the data into a R session by calling:

    tidyDat <- read.table("tidyDat.txt", header = T)

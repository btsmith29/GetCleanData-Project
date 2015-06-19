library(dplyr)

# Location of data files relative to script;
DATA.LOC <- "data/UCI HAR Dataset/"

## Worker function to load data for a given set (train, or test);
loadDataset <- function(type) {
    # core feature data
    fPath <- paste(DATA.LOC, type, "/X_", type, ".txt", sep = "")
    dat <- read.table(fPath)
    dat <- setNames(dat, features$feature)
    # subjects
    sPath <- paste(DATA.LOC, type, "/subject_", type, ".txt", sep = "")
    subjects <- read.table(sPath, col.names = c("subjectId"))
    dat <- cbind(subjects, dat)
    # activities
    aPath <- paste(DATA.LOC, type, "/y_", type, ".txt", sep = "")
    activities <- read.table(aPath, col.names = c("activityId"))
    dat <- cbind(activities, dat)
    # record whether this was from the test or train partition
    dat$set <- type
    dat
}

## Main analysis function:
## - requires "data" directory in current working directory;
runAnalysis <- function() {
    # Load and tidy up feature names
    fPath <- paste(DATA.LOC, "features.txt", sep = "")
    features <- read.table(fPath, col.names = c("featureId", "feature"))
    features <- mutate(features, feature = gsub("-", ".", feature, fixed = T))
    features <- mutate(features, feature = gsub("()", "", feature, fixed = T))
    
    # Load activity names
    aPath <- paste(DATA.LOC, "activity_labels.txt", sep = "")
    activities <- read.table(aPath, col.names = c("activityId", "activity"))
    
    ## 1. Merge the training and the test sets to create one data set;
    train <- loadDataset("train")
    test <- loadDataset("test")
    dat <- rbind(train, test)
    
    ## 2. Extract only the mean and std dev for each measurement; 
    colIdx <- unique(c(1:2, grep("\\.mean$|\\.mean\\.", names(dat)),
                       grep("\\.std$|\\.std\\.", names(dat))))
    dat <- dat[, colIdx]
    
    ## 3. Uses descriptive activity names to name the activities in the data set;
    dat <- merge(activities, dat)
    
    ## 4. Appropriately label the data set with descriptive variable names;
    ## (done in loading data)
    
    ## 5. From the data set in step4, creates a second, independent tidy dataset
    ## with the average of each variable for each activity and each subject.
    tidyDat <- rename(dat, Subject = subjectId, Activity = activity)
    tidyDat <- group_by(tidyDat, Subject, Activity)
    tidyDat <- summarise_each(tidyDat, funs(mean), matches("mean|std"))
    
    # File Output
    write.table(tidyDat, file = "tidyDat.txt", row.names = F)
}

## File Input
## Sample Usage:
## - tidyDat <- readInput()
## - tidyDat <- readInput("renamedTidyDat.txt")
readInput <- function(filePath = "tidyDat.txt") {
    read.table(filePath, header = T)
}

## Run Analysis
#runAnalysis()
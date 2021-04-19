# Getting and Cleaning Data Course Project

Exert from Course Project Page

> The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project.You will be required to submit:
>
1. a tidy data set as described below
2. a link to a Github repository with your script for performing the analysis
3. codeBook.md that describes the variables, the data, and any work that you performed to clean up the data 
4. README.md that explains how all of the scripts work and how they are connected.  
>
> One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
> 
> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

> Here are the data for the project: 

> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
> 
> You should create one R script called run_analysis.R that does the following. 
> 
> 1. Merges the training and the test sets to create one data set.
> 2. Extracts only the measurements on the mean and standard deviation for each measurement.
> 3. Uses descriptive activity names to name the activities in the data set.
> 4. Appropriately labels the data set with descriptive activity names.
> 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
> 
> Good luck!

# Code Explanation

For this project we use three packages:  
- readr  
- dplyr  
- tidyr  
We load them to the library as follows.
```R 
   library(readr)
   library(dplyr)
   library(tidyr)
```

In my project I have stored the downloaded data in the "UCI HAR Dataset" folder, therefore, we set the data directory, `data_dir` to be this.
```R 
data_dir <- "./UCI HAR Dataset/"
```

## Activity Labels

The next step we take is to read in the activity_labels.txt file and separate into two columns: "Numbers" and "Activity". This will be used later to map the activity numbers to their respective activities. Here, each activity line was separated by "\\n".
```R 
## Activity Labels
activity_labels <- read.table(file=paste0(data_dir,"activity_labels.txt"), sep="\n", quote="", comment.char="")
# Separating into a Number and corresponding Activity column - to be used in joining later on
activity_labels <- separate(activity_labels, c("V1"), into = c("Number", "Activity"), sep = " ")
```

## Features

Reading in the features (all of the variables) is much simpler. Each of the 561 feature (variable) is separated by "\\n".
```R
## features
features <- scan(file=paste0(data_dir,"features.txt"), character(), sep = "\n" )
```

## Create_data_set function

We now begin a function that creates tidy datasets for both the test and train datasets prior to merging them together.
```R
## function that creates a tidy data set for both the train and test datasets
create_data_set <- function(type){
```

### SubjectID

First, we read in the list of test subject IDs, making sure to name the column something human readable, "SubjectID".
```R
# subject - Identify each test subject
subject <- read.table(file=paste0(data_dir, type, "/subject_", type, ".txt"), sep="\n", quote="", comment.char="", col.names = "SubjectID")
```

### X data

Next we deal with the X_(test/train).txt file, which contains all observations for each of the features. Each row contains 561 entries - one for each feature. Rows are separated by "\\n" so we read in the data as follows.
```R
# X data
X_data <- read.table(file=paste0(data_dir, type, "/X_", type, ".txt"), sep="\n", quote="", comment.char="")
```

The X_data is separated into columns - one for each feature - to achieve our goal of a tidy dataset. These columns are given the names of the features. Note: there is white-space at the beginning of each row of the .txt file, thus I have named this column "throwaway" which gets dropped immediately after the separation
```R
# Separating data into columns. Throwaway is a column of " " (spaces). Immediately dropped
X_temp1 <- separate(X_data, c("V1"), into = c("throwaway", features), sep = " +")[ ,-1]
```

We then keep only the columns that have names that reference either "mean" or "std" as required by the task.
```R
# Choose columns that include mean or std
X_temp2 <- X_temp1[, grepl("mean|std", names(X_temp1))]
```

There are numeric prefixes to all features read in and thus to all column names remaining in the dataset. We remove them here.
```R
# Remove numeric prefixes from column names
names(X_temp2) <- gsub("^[0-9]+ ", "", names(X_temp2))
```
Finally, the columns need to be numeric format for the summary later.
```R
# Formatting all columns to be numeric
X <- as.data.frame(sapply(X_temp2, as.numeric))
```

### y data

The y_(test/train).txt file contains the activity number for each row of observations. We must read it in as a character data table, noting that each row is separated by "\\n". We then use our Activity Labels data table to replace the numbers for readable descriptions i.e. "Sitting"", "Standing" etc. Note that we name the column as "Number" to assist in this replacement

```R
# Y data
y_data <- read.table(file=paste0(data_dir, type, "/y_", type, ".txt"), sep="\n", quote="", comment.char="", col.names = "Number", colClasses = "character")
# Replacing Activity numbers by human readable names 
y <- select(left_join(y_data, activity_labels), Activity)
```

### Mutate and return
Finally, we combine the SubjectID, Activity (y_data) and Observations (X_data) together using the `mutate()` function, and return the final data set.
```R
final <- mutate(subject, y, X)

# return final data set
return(final)
}
```

## Combining test and train datasets
We run the above defined function for both the test and train datasets and combine with them using `rbind`.
```R
# Running the above function for both the test and train data
final_test <- create_data_set("test")
final_train <- create_data_set("train")

# Row binding the test and train data
final <- rbind(final_test, final_train)
```

## Summarising
The resulting dataset is tidy, however, we have been asked to summarise by taking the average of all of the features for each Subject and Activity.
```R
# Creating final summary dataset
# Group by SubjectID and Activity and then take the mean of each remaining columns
summary <- group_by(final, SubjectID, Activity) %>%
        summarise_each(funs(mean))
```

## Write to csv
This tidy, summariesed dataset is then written to a .csv file in the Working Directory.
```R
# Write tidy data to csv
write_csv(summary, "tidy_data.csv")
```




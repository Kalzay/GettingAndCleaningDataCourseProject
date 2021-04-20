# Loading packages
library(readr)
library(dplyr)
library(tidyr)

# Download data
fileurl = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
if (!file.exists('./UCI HAR Dataset.zip')){
        download.file(fileurl,'./UCI HAR Dataset.zip', mode = 'wb')
        unzip("UCI HAR Dataset.zip", exdir = getwd())
}

# Setting the data dictionary
data_dir <- "./UCI HAR Dataset/"

## Activity Labels
activity_labels <- read.table(file=paste0(data_dir,"activity_labels.txt"), sep="\n", quote="", comment.char="")
# Separating into a Number and corresponding Activity column - to be used in joining later on
activity_labels <- separate(activity_labels, c("V1"), into = c("Number", "Activity"), sep = " ")

## features
features <- scan(file=paste0(data_dir,"features.txt"), character(), sep = "\n" )

## function that creates a tidy data set for both the train and test datasets
create_data_set <- function(type){
        # subject - Identify each test subject
        subject <- read.table(file=paste0(data_dir, type, "/subject_", type, ".txt"), sep="\n", quote="", comment.char="", col.names = "SubjectID")
        
        # X data
        X_data <- read.table(file=paste0(data_dir, type, "/X_", type, ".txt"), sep="\n", quote="", comment.char="")
        # Separating data into columns. Throwaway is a column of " " (spaces). Immediately dropped
        X_temp1 <- separate(X_data, c("V1"), into = c("throwaway", features), sep = " +")[ ,-1]
        # Choose columns that include mean or std
        X_temp2 <- X_temp1[, grepl("[Mm]ean|[Ss]td", names(X_temp1))]
        # Remove numeric prefixes from column names
        names(X_temp2) <- gsub("^[0-9]+ ", "", names(X_temp2))
        # Formatting all columns to be numeric
        X <- as.data.frame(sapply(X_temp2, as.numeric))
        
        # Y data
        y_data <- read.table(file=paste0(data_dir, type, "/y_", type, ".txt"), sep="\n", quote="", comment.char="", col.names = "Number", colClasses = "character")
        # Replacing Activity numbers by human readable names 
        y <- select(left_join(y_data, activity_labels), Activity)
        
        # Join all
        final <- mutate(subject, y, X)
        
        # return final data set
        return(final)
}

# Running the above function for both the test and train data
final_test <- create_data_set("test")
final_train <- create_data_set("train")

# Row binding the test and train data
final <- rbind(final_test, final_train)

# Creating final summary dataset
# Group by SubjectID and Activity and then take the mean of each remaining columns
summary <- group_by(final, SubjectID, Activity) %>%
        summarise_each(funs(mean))

# Write tidy data to csv
write_csv(summary, "tidy_data.csv")
# Study Design

## Data Source
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy.
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws

## Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Attribute Information:

For each record in the dataset it is provided:  
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.  
- Triaxial Angular velocity from the gyroscope.  
- A 561-feature vector with time and frequency domain variables.  
- Its activity label.  
- An identifier of the subject who carried out the experiment.

## Tidy data Information:

The data described above was tidied into a single tidy dataset where only variables concerned with "mean" or "std" (standard deviation) were kept as required by the task - see README.md. Following this, the data was grouped by SubjectID, Activity and the mean of each variable was taken on this basis.


## Variable list, type and Description

Variable  | Variable Names | Class | Description
|---|---			|--- |---
"1" | "SubjectID" | "integer" | "Integer ID of the test subject, 0-30"
"2" | "Activity" | "factor" | "Activity the test subject was performing: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING"
"3" | "tBodyAcc-mean()-X" | "numeric" | "Mean of the tBodyAcc-mean()-X variable" 
"4" | "tBodyAcc-mean()-Y" | "numeric" | "Mean of the tBodyAcc-mean()-Y" 
"5" | "tBodyAcc-mean()-Z" | "numeric" | "Mean of the tBodyAcc-mean()-Z"  
"6" | "tBodyAcc-std()-X" | "numeric"  | "Mean of the tBodyAcc-std()-X" 
"7" | "tBodyAcc-std()-Y" | "numeric"  | "Mean of the tBodyAcc-std()-Y" 
"8" | "tBodyAcc-std()-Z" | "numeric" | "Mean of the tBodyAcc-std()-Z" 
"9" | "tGravityAcc-mean()-X" | "numeric"  | "Mean of the tGravityAcc-mean()-X" 
"10" | "tGravityAcc-mean()-Y" | "numeric"  | "Mean of the tGravityAcc-mean()-Y" 
"11" | "tGravityAcc-mean()-Z" | "numeric" | "Mean of the tGravityAcc-mean()-Z" 
"12" | "tGravityAcc-std()-X" | "numeric" | "Mean of the tGravityAcc-std()-X" 
"13" | "tGravityAcc-std()-Y" | "numeric" | "Mean of the tGravityAcc-std()-Y" 
"14" | "tGravityAcc-std()-Z" | "numeric" | "Mean of the tGravityAcc-std()-Z" 
"15" | "tBodyAccJerk-mean()-X" | "numeric" | "Mean of the tBodyAccJerk-mean()-X" 
"16" | "tBodyAccJerk-mean()-Y" | "numeric" | "Mean of the tBodyAccJerk-mean()-Y" 
"17" | "tBodyAccJerk-mean()-Z" | "numeric" | "Mean of the tBodyAccJerk-mean()-Z" 
"18" | "tBodyAccJerk-std()-X" | "numeric" | "Mean of the tBodyAccJerk-std()-X" 
"19" | "tBodyAccJerk-std()-Y" | "numeric" | "Mean of the tBodyAccJerk-std()-Y" 
"20" | "tBodyAccJerk-std()-Z" | "numeric" | "Mean of the tBodyAccJerk-std()-Z" 
"21" | "tBodyGyro-mean()-X" | "numeric" | "Mean of the tBodyGyro-mean()-X" 
"22" | "tBodyGyro-mean()-Y" | "numeric" | "Mean of the tBodyGyro-mean()-Y" 
"23" | "tBodyGyro-mean()-Z" | "numeric" | "Mean of the tBodyGyro-mean()-Z" 
"24" | "tBodyGyro-std()-X" | "numeric" | "Mean of the tBodyGyro-std()-X" 
"25" | "tBodyGyro-std()-Y" | "numeric" | "Mean of the tBodyGyro-std()-Y" 
"26" | "tBodyGyro-std()-Z" | "numeric" | "Mean of the tBodyGyro-std()-Z" 
"27" | "tBodyGyroJerk-mean()-X" | "numeric" | "Mean of the tBodyGyroJerk-mean()-X" 
"28" | "tBodyGyroJerk-mean()-Y" | "numeric" | "Mean of the tBodyGyroJerk-mean()-Y" 
"29" | "tBodyGyroJerk-mean()-Z" | "numeric" | "Mean of the tBodyGyroJerk-mean()-Z" 
"30" | "tBodyGyroJerk-std()-X" | "numeric" | "Mean of the tBodyGyroJerk-std()-X" 
"31" | "tBodyGyroJerk-std()-Y" | "numeric" | "Mean of the tBodyGyroJerk-std()-Y" 
"32" | "tBodyGyroJerk-std()-Z" | "numeric" | "Mean of the tBodyGyroJerk-std()-Z" 
"33" | "tBodyAccMag-mean()" | "numeric" | "Mean of the tBodyAccMag-mean()" 
"34" | "tBodyAccMag-std()" | "numeric" | "Mean of the tBodyAccMag-std()" 
"35" | "tGravityAccMag-mean()" | "numeric" | "Mean of the tGravityAccMag-mean()" 
"36" | "tGravityAccMag-std()" | "numeric" | "Mean of the tGravityAccMag-std()" 
"37" | "tBodyAccJerkMag-mean()" | "numeric" | "Mean of the tBodyAccJerkMag-mean()" 
"38" | "tBodyAccJerkMag-std()" | "numeric" | "Mean of the tBodyAccJerkMag-std()" 
"39" | "tBodyGyroMag-mean()" | "numeric" | "Mean of the tBodyGyroMag-mean()" 
"40" | "tBodyGyroMag-std()" | "numeric" | "Mean of the tBodyGyroMag-std()" 
"41" | "tBodyGyroJerkMag-mean()" | "numeric" | "Mean of the tBodyGyroJerkMag-mean()" 
"42" | "tBodyGyroJerkMag-std()" | "numeric" | "Mean of the tBodyGyroJerkMag-std()" 
"43" | "fBodyAcc-mean()-X" | "numeric" | "Mean of the fBodyAcc-mean()-X" 
"44" | "fBodyAcc-mean()-Y" | "numeric" | "Mean of the fBodyAcc-mean()-Y" 
"45" | "fBodyAcc-mean()-Z" | "numeric" | "Mean of the fBodyAcc-mean()-Z" 
"46" | "fBodyAcc-std()-X" | "numeric" | "Mean of the fBodyAcc-std()-X" 
"47" | "fBodyAcc-std()-Y" | "numeric" | "Mean of the fBodyAcc-std()-Y" 
"48" | "fBodyAcc-std()-Z" | "numeric" | "Mean of the fBodyAcc-std()-Z" 
"49" | "fBodyAcc-meanFreq()-X" | "numeric" | "Mean of the fBodyAcc-meanFreq()-X"
"50" | "fBodyAcc-meanFreq()-Y" | "numeric" | "Mean of the fBodyAcc-meanFreq()-Y" 
"51" | "fBodyAcc-meanFreq()-Z" | "numeric" | "Mean of the fBodyAcc-meanFreq()-Z" 
"52" | "fBodyAccJerk-mean()-X" | "numeric" | "Mean of the fBodyAccJerk-mean()-X" 
"53" | "fBodyAccJerk-mean()-Y" | "numeric" | "Mean of the fBodyAccJerk-mean()-Y" 
"54" | "fBodyAccJerk-mean()-Z" | "numeric" | "Mean of the fBodyAccJerk-mean()-Z" 
"55" | "fBodyAccJerk-std()-X" | "numeric" | "Mean of the fBodyAccJerk-std()-X" 
"56" | "fBodyAccJerk-std()-Y" | "numeric" | "Mean of the fBodyAccJerk-std()-Y" 
"57" | "fBodyAccJerk-std()-Z" | "numeric" | "Mean of the fBodyAccJerk-std()-Z" 
"58" | "fBodyAccJerk-meanFreq()-X" | "numeric" | "Mean of the fBodyAccJerk-meanFreq()-X" 
"59" | "fBodyAccJerk-meanFreq()-Y" | "numeric" | "Mean of the fBodyAccJerk-meanFreq()-Y" 
"60" | "fBodyAccJerk-meanFreq()-Z" | "numeric" | "Mean of the fBodyAccJerk-meanFreq()-Z" 
"61" | "fBodyGyro-mean()-X" | "numeric" | "Mean of the fBodyGyro-mean()-X" 
"62" | "fBodyGyro-mean()-Y" | "numeric" | "Mean of the fBodyGyro-mean()-Y" 
"63" | "fBodyGyro-mean()-Z" | "numeric" | "Mean of the fBodyGyro-mean()-Z" 
"64" | "fBodyGyro-std()-X" | "numeric" | "Mean of the fBodyGyro-std()-X" 
"65" | "fBodyGyro-std()-Y" | "numeric" | "Mean of the fBodyGyro-std()-Y" 
"66" | "fBodyGyro-std()-Z" | "numeric" | "Mean of the fBodyGyro-std()-Z" 
"67" | "fBodyGyro-meanFreq()-X" | "numeric"  | "Mean of the fBodyGyro-meanFreq()-X" 
"68" | "fBodyGyro-meanFreq()-Y" | "numeric"  | "Mean of the fBodyGyro-meanFreq()-Y" 
"69" | "fBodyGyro-meanFreq()-Z" | "numeric"  | "Mean of the fBodyGyro-meanFreq()-Z" 
"70" | "fBodyAccMag-mean()" | "numeric"  | "Mean of the fBodyAccMag-mean()" 
"71" | "fBodyAccMag-std()" | "numeric"  | "Mean of the fBodyAccMag-std()" 
"72" | "fBodyAccMag-meanFreq()" | "numeric"  | "Mean of the fBodyAccMag-meanFreq()" 
"73" | "fBodyBodyAccJerkMag-mean()" | "numeric"  | "Mean of the fBodyBodyAccJerkMag-mean()" 
"74" | "fBodyBodyAccJerkMag-std()" | "numeric"  | "Mean of the fBodyBodyAccJerkMag-std()" 
"75" | "fBodyBodyAccJerkMag-meanFreq()" | "numeric"  | "Mean of the fBodyBodyAccJerkMag-meanFreq()" 
"76" | "fBodyBodyGyroMag-mean()" | "numeric"  | "Mean of the fBodyBodyGyroMag-mean()" 
"77" | "fBodyBodyGyroMag-std()" | "numeric"  | "Mean of the fBodyBodyGyroMag-std()" 
"78" | "fBodyBodyGyroMag-meanFreq()" | "numeric"  | "Mean of the fBodyBodyGyroMag-meanFreq()" 
"79" | "fBodyBodyGyroJerkMag-mean()" | "numeric"  | "Mean of the fBodyBodyGyroJerkMag-mean()" 
"80" | "fBodyBodyGyroJerkMag-std()" | "numeric"  | "Mean of the fBodyBodyGyroJerkMag-std()" 
"81" | "fBodyBodyGyroJerkMag-meanFreq()" | "numeric"  | "Mean of the fBodyBodyGyroJerkMag-meanFreq()" 
"82" | "angle(tBodyAccMean,gravity)" | "numeric"  | "Mean of the angle(tBodyAccMean,gravity)" 
"83" | "angle(tBodyAccJerkMean),gravityMean)"  | "numeric"| "Mean of the angle(tBodyAccJerkMean),gravityMean)" 
"84" | "angle(tBodyGyroMean,gravityMean)"  | "numeric"| "Mean of the angle(tBodyGyroMean,gravityMean)" 
"85" | "angle(tBodyGyroJerkMean,gravityMean)"  | "numeric"| "Mean of the angle(tBodyGyroJerkMean,gravityMean)" 
"86" | "angle(X,gravityMean)" | "numeric"  | "Mean of the angle(X,gravityMean)" 
"87" | "angle(Y,gravityMean)" | "numeric"  | "Mean of the angle(Y,gravityMean)" 
"88" | "angle(Z,gravityMean)" | "numeric"  | "Mean of the angle(Z,gravityMean)" 
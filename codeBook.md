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


## Variable list and type

Variable  | Variable Names | Class 
|---|---			|---
"1" | "SubjectID" | "integer" 
"2" | "Activity" | "factor" 
"3" | "tBodyAcc-mean()-X" | "numeric" 
"4" | "tBodyAcc-mean()-Y" | "numeric" 
"5" | "tBodyAcc-mean()-Z" | "numeric"  
"6" | "tBodyAcc-std()-X" | "numeric"  
"7" | "tBodyAcc-std()-Y" | "numeric"  
"8" | "tBodyAcc-std()-Z" | "numeric" 
"9" | "tGravityAcc-mean()-X" | "numeric"  
"10" | "tGravityAcc-mean()-Y" | "numeric"  
"11" | "tGravityAcc-mean()-Z" | "numeric" 
"12" | "tGravityAcc-std()-X" | "numeric" 
"13" | "tGravityAcc-std()-Y" | "numeric" 
"14" | "tGravityAcc-std()-Z" | "numeric" 
"15" | "tBodyAccJerk-mean()-X" | "numeric" 
"16" | "tBodyAccJerk-mean()-Y" | "numeric" 
"17" | "tBodyAccJerk-mean()-Z" | "numeric" 
"18" | "tBodyAccJerk-std()-X" | "numeric" 
"19" | "tBodyAccJerk-std()-Y" | "numeric" 
"20" | "tBodyAccJerk-std()-Z" | "numeric" 
"21" | "tBodyGyro-mean()-X" | "numeric" 
"22" | "tBodyGyro-mean()-Y" | "numeric" 
"23" | "tBodyGyro-mean()-Z" | "numeric" 
"24" | "tBodyGyro-std()-X" | "numeric" 
"25" | "tBodyGyro-std()-Y" | "numeric" 
"26" | "tBodyGyro-std()-Z" | "numeric" 
"27" | "tBodyGyroJerk-mean()-X" | "numeric" 
"28" | "tBodyGyroJerk-mean()-Y" | "numeric" 
"29" | "tBodyGyroJerk-mean()-Z" | "numeric" 
"30" | "tBodyGyroJerk-std()-X" | "numeric" 
"31" | "tBodyGyroJerk-std()-Y" | "numeric" 
"32" | "tBodyGyroJerk-std()-Z" | "numeric" 
"33" | "tBodyAccMag-mean()" | "numeric" 
"34" | "tBodyAccMag-std()" | "numeric" 
"35" | "tGravityAccMag-mean()" | "numeric" 
"36" | "tGravityAccMag-std()" | "numeric" 
"37" | "tBodyAccJerkMag-mean()" | "numeric" 
"38" | "tBodyAccJerkMag-std()" | "numeric" 
"39" | "tBodyGyroMag-mean()" | "numeric" 
"40" | "tBodyGyroMag-std()" | "numeric" 
"41" | "tBodyGyroJerkMag-mean()" | "numeric" 
"42" | "tBodyGyroJerkMag-std()" | "numeric" 
"43" | "fBodyAcc-mean()-X" | "numeric" 
"44" | "fBodyAcc-mean()-Y" | "numeric" 
"45" | "fBodyAcc-mean()-Z" | "numeric" 
"46" | "fBodyAcc-std()-X" | "numeric" 
"47" | "fBodyAcc-std()-Y" | "numeric" 
"48" | "fBodyAcc-std()-Z" | "numeric" 
"49" | "fBodyAcc-meanFreq()-X" | "numeric" 
"50" | "fBodyAcc-meanFreq()-Y" | "numeric" 
"51" | "fBodyAcc-meanFreq()-Z" | "numeric" 
"52" | "fBodyAccJerk-mean()-X" | "numeric" 
"53" | "fBodyAccJerk-mean()-Y" | "numeric" 
"54" | "fBodyAccJerk-mean()-Z" | "numeric" 
"55" | "fBodyAccJerk-std()-X" | "numeric" 
"56" | "fBodyAccJerk-std()-Y" | "numeric" 
"57" | "fBodyAccJerk-std()-Z" | "numeric" 
"58" | "fBodyAccJerk-meanFreq()-X" | "numeric" 
"59" | "fBodyAccJerk-meanFreq()-Y" | "numeric" 
"60" | "fBodyAccJerk-meanFreq()-Z" | "numeric" 
"61" | "fBodyGyro-mean()-X" | "numeric" 
"62" | "fBodyGyro-mean()-Y" | "numeric" 
"63" | "fBodyGyro-mean()-Z" | "numeric" 
"64" | "fBodyGyro-std()-X" | "numeric" 
"65" | "fBodyGyro-std()-Y" | "numeric"  
"66" | "fBodyGyro-std()-Z" | "numeric" 
"67" | "fBodyGyro-meanFreq()-X" | "numeric"  
"68" | "fBodyGyro-meanFreq()-Y" | "numeric"  
"69" | "fBodyGyro-meanFreq()-Z" | "numeric"  
"70" | "fBodyAccMag-mean()" | "numeric"  
"71" | "fBodyAccMag-std()" | "numeric"  
"72" | "fBodyAccMag-meanFreq()" | "numeric"  
"73" | "fBodyBodyAccJerkMag-mean()" | "numeric"  
"74" | "fBodyBodyAccJerkMag-std()" | "numeric"  
"75" | "fBodyBodyAccJerkMag-meanFreq()" | "numeric"  
"76" | "fBodyBodyGyroMag-mean()" | "numeric"  
"77" | "fBodyBodyGyroMag-std()" | "numeric"  
"78" | "fBodyBodyGyroMag-meanFreq()" | "numeric"  
"79" | "fBodyBodyGyroJerkMag-mean()" | "numeric"  
"80" | "fBodyBodyGyroJerkMag-std()" | "numeric"  
"81" | "fBodyBodyGyroJerkMag-meanFreq()" | "numeric"  
"82" | "angle(tBodyAccMean,gravity)" | "numeric"  
"83" | "angle(tBodyAccJerkMean),gravityMean)"  | "numeric"
"84" | "angle(tBodyGyroMean,gravityMean)"  | "numeric"
"85" | "angle(tBodyGyroJerkMean,gravityMean)"  | "numeric"
"86" | "angle(X,gravityMean)" | "numeric"  
"87" | "angle(Y,gravityMean)" | "numeric"  
"88" | "angle(Z,gravityMean)" | "numeric"  

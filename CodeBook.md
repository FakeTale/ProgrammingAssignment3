## Data Source

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

### Original Data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then 
sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
Features are normalized and bounded within [-1,1].

### TidyData.txt
The the file you can find the average of each mean() and std() variable from the original data set grouped by activity and subject.


Column | Class | Range | Mean
------------ | ------------- | ------------ | ------------- 
subject | integer | 1  -  30 | 
activities | factor | LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS | 
timeBodyAcc.mean.X | numeric | 0.2216  -  0.3015 | 0.2743
timeBodyAcc.mean.Y | numeric | -0.0405  -  -0.0013 | -0.0179
timeBodyAcc.mean.Z | numeric | -0.1525  -  -0.0754 | -0.1092
timeBodyAcc.std.X | numeric | -0.9961  -  0.6269 | -0.5577
timeBodyAcc.std.Y | numeric | -0.9902  -  0.6169 | -0.4605
timeBodyAcc.std.Z | numeric | -0.9877  -  0.609 | -0.5756
timeGravityAcc.mean.X | numeric | -0.68  -  0.9745 | 0.6975
timeGravityAcc.mean.Y | numeric | -0.4799  -  0.9566 | -0.0162
timeGravityAcc.mean.Z | numeric | -0.4951  -  0.9579 | 0.0741
timeGravityAcc.std.X | numeric | -0.9968  -  -0.8296 | -0.9638
timeGravityAcc.std.Y | numeric | -0.9942  -  -0.6436 | -0.9524
timeGravityAcc.std.Z | numeric | -0.991  -  -0.6102 | -0.9364
timeBodyAccJerk.mean.X | numeric | 0.0427  -  0.1302 | 0.0795
timeBodyAccJerk.mean.Y | numeric | -0.0387  -  0.0568 | 0.0076
timeBodyAccJerk.mean.Z | numeric | -0.0675  -  0.0381 | -0.005
timeBodyAccJerk.std.X | numeric | -0.9946  -  0.5443 | -0.5949
timeBodyAccJerk.std.Y | numeric | -0.9895  -  0.3553 | -0.5654
timeBodyAccJerk.std.Z | numeric | -0.9933  -  0.031 | -0.736
timeBodyGyro.mean.X | numeric | -0.2058  -  0.1927 | -0.0324
timeBodyGyro.mean.Y | numeric | -0.2042  -  0.0275 | -0.0743
timeBodyGyro.mean.Z | numeric | -0.0725  -  0.1791 | 0.0874
timeBodyGyro.std.X | numeric | -0.9943  -  0.2677 | -0.6916
timeBodyGyro.std.Y | numeric | -0.9942  -  0.4765 | -0.6533
timeBodyGyro.std.Z | numeric | -0.9855  -  0.5649 | -0.6164
timeBodyGyroJerk.mean.X | numeric | -0.1572  -  -0.0221 | -0.0961
timeBodyGyroJerk.mean.Y | numeric | -0.0768  -  -0.0132 | -0.0427
timeBodyGyroJerk.mean.Z | numeric | -0.0925  -  -0.0069 | -0.0548
timeBodyGyroJerk.std.X | numeric | -0.9965  -  0.1791 | -0.7036
timeBodyGyroJerk.std.Y | numeric | -0.9971  -  0.2959 | -0.7636
timeBodyGyroJerk.std.Z | numeric | -0.9954  -  0.1932 | -0.7096
timeBodyAccMag.mean | numeric | -0.9865  -  0.6446 | -0.4973
timeBodyAccMag.std | numeric | -0.9865  -  0.4284 | -0.5439
timeGravityAccMag.mean | numeric | -0.9865  -  0.6446 | -0.4973
timeGravityAccMag.std | numeric | -0.9865  -  0.4284 | -0.5439
timeBodyAccJerkMag.mean | numeric | -0.9928  -  0.4345 | -0.6079
timeBodyAccJerkMag.std | numeric | -0.9946  -  0.4506 | -0.5842
timeBodyGyroMag.mean | numeric | -0.9807  -  0.418 | -0.5652
timeBodyGyroMag.std | numeric | -0.9814  -  0.3 | -0.6304
timeBodyGyroJerkMag.mean | numeric | -0.9973  -  0.0876 | -0.7364
timeBodyGyroJerkMag.std | numeric | -0.9977  -  0.2502 | -0.755
freqBodyAcc.mean.X | numeric | -0.9952  -  0.537 | -0.5758
freqBodyAcc.mean.Y | numeric | -0.989  -  0.5242 | -0.4887
freqBodyAcc.mean.Z | numeric | -0.9895  -  0.2807 | -0.6297
freqBodyAcc.std.X | numeric | -0.9966  -  0.6585 | -0.5522
freqBodyAcc.std.Y | numeric | -0.9907  -  0.5602 | -0.4815
freqBodyAcc.std.Z | numeric | -0.9872  -  0.6871 | -0.5824
freqBodyAccJerk.mean.X | numeric | -0.9946  -  0.4743 | -0.6139
freqBodyAccJerk.mean.Y | numeric | -0.9894  -  0.2767 | -0.5882
freqBodyAccJerk.mean.Z | numeric | -0.992  -  0.1578 | -0.7144
freqBodyAccJerk.std.X | numeric | -0.9951  -  0.4768 | -0.6121
freqBodyAccJerk.std.Y | numeric | -0.9905  -  0.3498 | -0.5707
freqBodyAccJerk.std.Z | numeric | -0.9931  -  -0.0062 | -0.7565
freqBodyGyro.mean.X | numeric | -0.9931  -  0.475 | -0.6367
freqBodyGyro.mean.Y | numeric | -0.994  -  0.3288 | -0.6767
freqBodyGyro.mean.Z | numeric | -0.986  -  0.4924 | -0.6044
freqBodyGyro.std.X | numeric | -0.9947  -  0.1966 | -0.711
freqBodyGyro.std.Y | numeric | -0.9944  -  0.6462 | -0.6454
freqBodyGyro.std.Z | numeric | -0.9867  -  0.5225 | -0.6577
freqBodyAccMag.mean | numeric | -0.9868  -  0.5866 | -0.5365
freqBodyAccMag.std | numeric | -0.9876  -  0.1787 | -0.621
freqBodyBodyAccJerkMag.mean | numeric | -0.994  -  0.5384 | -0.5756
freqBodyBodyAccJerkMag.std | numeric | -0.9944  -  0.3163 | -0.5992
freqBodyBodyGyroMag.mean | numeric | -0.9865  -  0.204 | -0.6671
freqBodyBodyGyroMag.std | numeric | -0.9815  -  0.2367 | -0.6723
freqBodyBodyGyroJerkMag.mean | numeric | -0.9976  -  0.1466 | -0.7564
freqBodyBodyGyroJerkMag.std | numeric | -0.9976  -  0.2878 | -0.7715
 

CodeBook.md
===========

This CodeBook describes variables in the tidy data set and the transformations performed:
-----------------------------------------------------------------------------------------

Transformations:
----------------
 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Variables:
----------

The tidy data set (given in TidyData.txt) contains 81 columns/variables and 180 rows/observations
- Variable names prefix with "t" are time domain measurements
- Variable names prefix with "f" are frequency domain measurements
- The tidy data set is obtained by aggregating all variables grouped by variable SubjectID and ActivityID 

S.No.	Name						Description															Domain
--------------------------------------------------------------------------------------------------------------------------
1.		"SubjectID"					Identity of the subject who performed the experiment. (1~30)		Time                    
2.		"ActivityID"                Descriptive activity that the subject performed.    				Time
3.		"tBodyAcc.mean.X"           Mean of body acceleration along X-axis.								Time    
4.		"tBodyAcc.mean.Y"           Mean of body acceleration along Y-axis.								Time    
5.		"tBodyAcc.mean.Z"			Mean of body acceleration along Z-axis.								Time
6.		"tBodyAcc.stdDev.X"         Standard deviation of body acceleration along X-axis.				Time   
7.		"tBodyAcc.stdDev.Y"			Standard deviation of body acceleration along Y-axis.				Time
8.		"tBodyAcc.stdDev.Z"			Standard deviation of body acceleration along Z-axis.				Time
9.		"tGravityAcc.mean.X"		Mean of gravity acceleration along X-axis.							Time           
10.		"tGravityAcc.mean.Y" 		Mean of gravity acceleration along Y-axis.							Time
11.		"tGravityAcc.mean.Z"		Mean of gravity acceleration along Z-axis.							Time
12.		"tGravityAcc.stdDev.X"      Standard deviation of gravity acceleration along X-axis.			Time   
13.		"tGravityAcc.stdDev.Y"		Standard deviation of gravity acceleration along Y-axis.			Time
14.		"tGravityAcc.stdDev.Z"		Standard deviation of gravity acceleration along Z-axis.			Time
15.		"tBodyAccJerk.mean.X"       Mean of body acceleration jerk along X-axis.    					Time
16.		"tBodyAccJerk.mean.Y"		Mean of body acceleration jerk along Y-axis.						Time
17.		"tBodyAccJerk.mean.Z"		Mean of body acceleration jerk along Z-axis.						Time
18.		"tBodyAccJerk.stdDev.X"		Standard deviation of body acceleration jerk along X-axis.			Time        
19.		"tBodyAccJerk.stdDev.Y"		Standard deviation of body acceleration jerk along Y-axis.			Time
20.		"tBodyAccJerk.stdDev.Z"		Standard deviation of body acceleration jerk along Z-axis.			Time
21.		"tBodyGyro.mean.X" 			Mean of body gyroscope along X-axis.            					Time
22.		"tBodyGyro.mean.Y"			Mean of body gyroscope along Y-axis.								Time
23.		"tBodyGyro.mean.Z"			Mean of body gyroscope along Z-axis.								Time
24.		"tBodyGyro.stdDev.X"        Standard deviation of body gyroscope along X-axis.   				Time
25.		"tBodyGyro.stdDev.Y"		Standard deviation of body gyroscope along Y-axis.					Time
26.		"tBodyGyro.stdDev.Z"		Standard deviation of body gyroscope along Z-axis.					Time
27.		"tBodyGyroJerk.mean.X"		Mean of body gyroscope jerk along X-axis.         					Time
28.		"tBodyGyroJerk.mean.Y"		Mean of body gyroscope jerk along Y-axis.							Time
29.		"tBodyGyroJerk.mean.Z"		Mean of body gyroscope jerk along Z-axis.							Time
30.		"tBodyGyroJerk.stdDev.X"	Standard deviation of body gyroscope jerk along X-axis.				Time       
31.		"tBodyGyroJerk.stdDev.Y"	Standard deviation of body gyroscope jerk along Y-axis.				Time
32.		"tBodyGyroJerk.stdDev.Z"	Standard deviation of body gyroscope jerk along Z-axis.				Time
33.		"tBodyAccMag.mean"          Mean of body acceleration magnitude.   								Time
34.		"tBodyAccMag.stdDev"		Standard deviation of body acceleration magnitude.					Time
35.		"tGravityAccMag.mean"		Mean of gravity acceleration magnitude.								Time
36.		"tGravityAccMag.stdDev"		Standard deviation of gravity acceleration magnitude. 				Time       
37.		"tBodyAccJerkMag.mean"		Mean of body acceleration jerk magnitude.							Time
38.		"tBodyAccJerkMag.stdDev"	Standard deviation of body acceleration jerk magnitude.				Time
39.		"tBodyGyroMag.mean"			Mean of body gyroscope magnitude.            						Time
40.		"tBodyGyroMag.stdDev"		Standard deviation of body gyroscope magnitude. 					Time
41.		"tBodyGyroJerkMag.mean"		Mean of body gyroscope jerk magnitude.								Time
42.		"tBodyGyroJerkMag.stdDev"	Standard deviation of body gyroscope jerk magnitude.				Time      
43.		"fBodyAcc.mean.X"			Mean of body acceleration along X-axis.								Frequency	
44.		"fBodyAcc.mean.Y"			Mean of body acceleration along Y-axis.								Frequency
45.		"fBodyAcc.mean.Z"           Mean of body acceleration along Z-axis.								Frequency   
46.		"fBodyAcc.stdDev.X"			Standard deviation of body acceleration along X-axis.				Frequency
47.		"fBodyAcc.stdDev.Y"			Standard deviation of body acceleration along Y-axis.				Frequency
48.		"fBodyAcc.stdDev.Z"  		Standard deviation of body acceleration along Z-axis.				Frequency          
49.		"fBodyAcc.meanFreq.X"		Mean of body acceleration (Mean Freq) along X-axis.					Frequency
50.		"fBodyAcc.meanFreq.Y"		Mean of body acceleration (Mean Freq) along Y-axis.					Frequency
51.		"fBodyAcc.meanFreq.Z" 		Mean of body acceleration (Mean Freq) along Z-axis.					Frequency         
52.		"fBodyAccJerk.mean.X"		Mean of body acceleration jerk along X-axis.						Frequency
53.		"fBodyAccJerk.mean.Y"		Mean of body acceleration jerk along Y-axis.						Frequency
54.		"fBodyAccJerk.mean.Z"		Mean of body acceleration jerk along Z-axis.						Frequency          
55.		"fBodyAccJerk.stdDev.X"		Standard deviation of body acceleration jerk along X-axis.			Frequency
56.		"fBodyAccJerk.stdDev.Y" 	Standard deviation of body acceleration jerk along Y-axis.			Frequency
57.		"fBodyAccJerk.stdDev.Z" 	Standard deviation of body acceleration jerk along Z-axis.			Frequency       
58.		"fBodyAccJerk.meanFreq.X"	Mean of body acceleration jerk (Mean Freq) along X-axis.			Frequency
59.		"fBodyAccJerk.meanFreq.Y"	Mean of body acceleration jerk (Mean Freq) along Y-axis.			Frequency
60.		"fBodyAccJerk.meanFreq.Z"   Mean of body acceleration jerk (Mean Freq) along Z-axis.			Frequency   
61.		"fBodyGyro.mean.X"			Mean of body gyroscope along X-axis.								Frequency
62.		"fBodyGyro.mean.Y"			Mean of body gyroscope along Y-axis.								Frequency
63.		"fBodyGyro.mean.Z"			Mean of body gyroscope along Z-axis.								Frequency             
64.		"fBodyGyro.stdDev.X"		Standard deviation of body gyroscope along X-axis.					Frequency
65.		"fBodyGyro.stdDev.Y"		Standard deviation of body gyroscope along Y-axis.					Frequency
66.		"fBodyGyro.stdDev.Z"		Standard deviation of body gyroscope along Z-axis.					Frequency           
67.		"fBodyGyro.meanFreq.X"		Mean of body gyroscope (Mean Freq) along X-axis.					Frequency
68.		"fBodyGyro.meanFreq.Y"		Mean of body gyroscope (Mean Freq) along Y-axis.					Frequency
69.		"fBodyGyro.meanFreq.Z"		Mean of body gyroscope (Mean Freq) along Z-axis.					Frequency         
70.		"fBodyAccMag.mean"			Mean of body acceleration magnitude.   								Frequency
71.		"fBodyAccMag.stdDev"		Standard deviation of body acceleration magnitude.   				Frequency
72.		"fBodyAccMag.meanFreq"		Mean of body acceleration magnitude (Mean Freq).   					Frequency
73.		"fBodyBodyAccJerkMag.mean"	Mean of body acceleration jerk magnitude.							Frequency
74.		"fBodyBodyAccJerkMag.stdDev" Standard deviation of body acceleration jerk magnitude.			Frequency
75.		"fBodyBodyAccJerkMag.meanFreq" Standard deviation of body acceleration jerk magnitude (Mean Freq).	Frequency
76.		"fBodyBodyGyroMag.mean"		Mean of body gyroscope magnitude.            						Frequency
77.		"fBodyBodyGyroMag.stdDev"	Standard deviation of body gyroscope magnitude.            			Frequency
78.		"fBodyBodyGyroMag.meanFreq" Mean of body gyroscope magnitude Mean Freq).            			Frequency   
79.		"fBodyBodyGyroJerkMag.mean"	Mean of body gyroscope jerk magnitude.         						Frequency
80.		"fBodyBodyGyroJerkMag.stdDev" Standard deviation of body gyroscope jerk magnitude.				Frequency
81.		"fBodyBodyGyroJerkMag.meanFreq" Standard deviation of body gyroscope jerk magnitude(Mean Freq).	Frequency
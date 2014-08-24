Readme.md
=========

This repository mainly contains three files:
--------------------------------------------
 
1. R script for performing the analysis - run_analysis.R 
2. Tidy data set obtained by running the script on the downloaded data - TidyData.txt
3. Code book that describes the variables, the data, and transformations performed to clean up the data - CodeBook.md.
 
Following are the main tasks and sub-task that the analysis script performed:
------------------------------------------------------------------------------
 
1. Task: 0 - Download data set
	- 0.a: Download and upzip the project data and save it in the UCI_HAR_Dataset folder.
	- 0.b: Set up the working directory 

2. Task: 1 - Merges the training and the test sets to create one data set.
	- 1.a: Read training data set 
	- 1.b: Read testing data 
	- 1.c: Clipped the data together
	- 1.d: Merge training and testing data into a unified data set

3. Task: 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
	-2.a: Reads Features data set (features.txt)
	-2.b: Extracts column names with regular expression ".*mean.*" or ".*std.*" 
	-2.c: Creates new data set with selected variables

4. Task: 3 - Uses descriptive activity names to name the activities in the data set
	-3.a: Reads activity labels from file (activity_labels.txt)
	-3.b: Modify the activity with in the extracted data set

5. Task: 4 - Appropriately labels the data set with descriptive variable names.
	-4.a: Substitute column name with "mean()"/meanFreq() to "mean"/meanFreq and "std()" to "stdDev"
	-4.b: Change variable names to appropriate labels

6. Task: 5 - Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	-5.a: Aggregating extracted data over multiple measurement columns 
	-5.b: Sorting the tidy data with respect to subject identities
	-5.c: Writing tidy data to a .txt file

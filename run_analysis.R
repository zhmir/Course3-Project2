## Download and upzip the project data and save it in the UCI_HAR_Dataset folder.

## Set up the working directory 
setwd("~/R/UCI_HAR_Dataset")

course4_proj2 <- function() {

## Task: 1 - Merges the training and the test sets to create one data set.
# 1.a: Read training data set
# 1.b: Read testing data
# 1.c: Clipped the data together
# 1.d: Merge training and testing data into a unified data set

Train_X <- read.table("~/R/UCI_HAR_Dataset/train/X_train.txt")
Train_Y <- read.table("~/R/UCI_HAR_Dataset/train/y_train.txt")
Subject_Train <- read.table("~/R/UCI_HAR_Dataset/train/subject_train.txt")

Test_X <- read.table("~/R/UCI_HAR_Dataset/test/X_test.txt")
Test_Y <- read.table("~/R/UCI_HAR_Dataset/test/y_test.txt")
Subject_Test <- read.table("~/R/UCI_HAR_Dataset/test/subject_test.txt")

# Before merging we need to "clip" the data together using rbind() function
# There were 30 subjects - Training data =  70% with 21 Subjects and Testing Data = 30% with 9 Subjects
# Verify above with unique(Subject_Train) and unique(Subject_Test) commands

Cliped_X = rbind(Train_X,Test_X)
# dim(Cliped_X) : rows clipped together
Cliped_Y = rbind(Train_Y,Test_Y)
# sort(unique(Cliped_Y$V1)): all 6 activities
Cliped_Subject = rbind(Subject_Train,Subject_Test)
# sort(unique(Cliped_Subject$V1)) : all 30 subjects

# Merge data together combining columns from the clipped data
MergedData <- cbind(Cliped_Subject, Cliped_Y, Cliped_X)

## Task: 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
# 2.a: Reads Features data set (features.txt)
# 2.b: Extracts column names with regular expression ".*mean.*" or ".*std.*" 
# 2.c: Creates new data set with selected variables 

# Read features.txt
featureData <- read.table("~/R/UCI_HAR_Dataset/features.txt")

# Extract the column index where names contains either mean or std
index <- (grep(".*mean.*|.*std.*",featureData$V2)+2)

# Add the coulmn index for Cliped_Y (Activity Identity) and Cliped_Subject (Subject Identity)
columnIndex <- c(1, 2, index)

# Extract only the required columns with mean() and std() only
ExtractedData <- MergedData[, columnIndex]


## Task: 3 - Uses descriptive activity names to name the activities in the data set
# 3.a: Reads activity labels from file (activity_labels.txt)
# 3.b: Modify the activity with in the extracted data set

# Read activity labels
activityLabel <- read.table("~/R/UCI_HAR_Dataset/activity_labels.txt")

# Exchange the activity code with the descriptive activity names
ExtractedData[,2] <- as.character(activityLabel$V2[ExtractedData[,2]])


## Task: 4 - Appropriately labels the data set with descriptive variable names.
# 4.a: Substitute column name with "mean()"/meanFreq() to "mean"/meanFreq and "std()" to "stdDev"
# 4.b: Change variable names to appropriate labels

# Extract the required column names 
columnNames <- grep(".*mean.*|.*std.*",featureData$V2,value=T)

# Substitute column names with "mean()"/meanFreq() to "mean"/meanFreq and "std()" to "stdDev"
columnLabels <- sub("std\\(\\)", "stdDev",sub("meanFreq\\(\\)","meanFreq",sub("mean\\(\\)","mean",columnNames)))

# Replace all occurences of "-" in column names with "." to make syntactically valid names
columnLabels <- gsub("-", ".", columnLabels)

# Assign appropriate column names
names(ExtractedData)[1] <- "SubjectIdentity"
names(ExtractedData)[2] <- "ActivityIdentity"
names(ExtractedData)[3:(length(columnNames)+2)] <- columnLabels


## Task: 5 - Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# 5.a: Aggregating extracted data over multiple measurement columns 
# 5.b: Sorting the tidy data with respect to subject identities
# 5.c: Writing tidy data to a .txt file

# Aggregate
TidyData <- as.data.frame(with(ExtractedData, aggregate(ExtractedData[,3:81], list("SubjectID"=ExtractedData$SubjectIdentity, "ActivityID"=ExtractedData$ActivityIdentity), mean, na.rm = TRUE)))

# Sort
TidyData <- TidyData[order(TidyData$SubjectID),]

# Write
write.table(TidyData, file="TidyData.txt", row.name=FALSE)

}
###
# Step 1: Merges the training and the test sets to create one data set.

# Load Test Dataset

# Read test data
Test_Data <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
# Read test label
Test_Label <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
# Read test subject
Test_Subj <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Load Training Dataset

# Read training data
Train_Data <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
# Read training label
Train_Label <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
# Read training subject
Train_Subj <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Merge test & training data
Merged_Data <- rbind(Test_Data, Train_Data)
Merged_Label <- rbind(Test_Label, Train_Label)
Merged_Subj <- rbind(Test_Subj, Train_Subj)



# Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.

# Read the complete list of variables of each feature
Features <- read.table("./data/UCI HAR Dataset/features.txt")

# Extracts only the mean and standard deviation features
Sub_Features <- Features[grep("mean|std", Features$V2),]

# Subsetting variables which carries mean and standard deviation measurements
Merged_Data_Features <- Merged_Data[, Sub_Features$V1]

# Cleanup measurements list
# Remove () from the measurements list
Sub_Features <- gsub("\\(\\)", "", Sub_Features$V2)
# Remove - from the measurements list
Sub_Features <- gsub("-", "", Sub_Features)
# Replace mean to Mean
Sub_Features <- gsub("mean", "Mean", Sub_Features)
# Replace std to Std
Sub_Features <- gsub("std", "Std", Sub_Features)



# Step 3: Uses descriptive activity names to name the activities in the data set

# Read the list of activity label
Activity_Label <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

# Extract the Activity Name for the 
Activity_Name <- Activity_Label[Merged_Label[,1],2]

# Assign Activity Name to the activities in the combined dataset
Merged_Label[, 1] <- Activity_Name



# Step 4: Appropriately labels the data set with descriptive variable names. 

# Assign combined dataset variable names with the appropriate measurements
names(Merged_Data_Features) <- Sub_Features
names(Merged_Label) <- "Activity"
names(Merged_Subj) <- "Subject"

# Combine all the tidy variables
Clean_Data <- cbind(Merged_Subj, Merged_Label, Merged_Data_Features)

# Create Clean Dataset
write.table(Clean_Data, "Clean_Data.txt", row.names = FALSE)


# Step 5 : From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(data.table)
Clean_Data <- data.table(Clean_Data)

Tidy_Data_Average <- Clean_Data[, lapply(.SD, mean), by = "Subject,Activity"]
        
write.table(Tidy_Data_Average, "Clean_Data_Column_Mean.txt", row.names = FALSE)


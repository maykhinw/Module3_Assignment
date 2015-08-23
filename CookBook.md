This file consists of description about the variables and other information used in the script run_analysis.R

Background information

Reading the background information about the course project helps. It can be obtained here

Data Source

The dataset for this project can be download here

Variables and relevent information

Test_Data
read data from X_test.txt
class = data frame
dim = 2947 x 561

Test_Label
read data from y_test.txt
class = data frame
dim = 2947 x 1

Test_Subj
read data from subject_test.txt
class = data frame
dim = 2947 x 1

Train_Data
read data from X_train.txt
class = data frame
dim = 7352 x 561

Train_Label
read data from y_train.txt
class = data frame
dim = 7352 x 1

Train_Subj
read data from subject_train.txt
class = data frame
dim = 7352 x 1

Merged_Data
combine trainData and testData
class = data frame
dim = 10299 x 561

Merged_Label
combine trainLabel and testLabel
dim = 10299 x 1

Features
read data from features.txt
total of 561 features

Sub_Features
select only "mean" and "std"
total of 79

Activity_Label
read from activity_labels.txt
total of 6 different activity

Clean_Data
dim = 10299 x 81
tidyDataAverage

Clean_Data with mean for related columns
dim = 180 x 81

prepared by May Khin Wong
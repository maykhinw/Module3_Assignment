This file consists of description about the variables and other information used in the script **run_analysis.R**   

### Background information

Reading the background information about the course project helps. It can be obtained [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Data Source

The dataset for this project can be download [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Variables and relevent information

1. Train_Data 
	- read data from X_train.txt
	- class = data frame
	- dim = 7352 x 561
2. Train_Label
	- read data from y_train.txt
	- class = data frame
	- dim = 7352 x 1
3. Train_Subj
	- read data from subject_train.txt
	- class = data frame
	- dim = 7352 x 1
4. Test_Data 
	- read data from X_test.txt
	- class = data frame
	- dim = 2947 x 561
5. Test_Label
	- read data from y_test.txt
	- class = data frame
	- dim = 2947 x 1
6. Test_Subj
	- read data from subject_test.txt
	- class = data frame	
	- dim = 2947 x 1 
7. Merged_Data
	- combine Train_Data and Test_Data
	- class = data frame
	- dim = 10299 x 561
8. Merged_Label 
	- combine Train_Label and Test_Label
	- dim = 10299 x 1 
9. Features
	- read data from features.txt
	- total of 561 features
10. Sub_Features
	- select only "mean" and "std"
	- total of 79
11. Activity_Label
	- read from activity_labels.txt
	- total of 6 different activity
12. Clean_Data
	- dim = 10299  x 81
13. Tidy_Data_Average
	- cleanData with mean for related columns
	- dim = 180 x 81

prepared by May Khin Wong
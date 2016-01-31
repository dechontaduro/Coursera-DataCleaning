# Coursera-DataCleaning
Repository to Data Cleaning Course in Coursera

CodeBook
========
In [codebook.md](https://github.com/dechontaduro/Coursera-DataCleaning/blob/master/CodeBook.md) you found description of tidy dataset

Script
=======
The file [run_analysis.R](https://github.com/dechontaduro/Coursera-DataCleaning/blob/master/run_analysis.R) contains **R** script to generate Tidy Dataset run the next steps

1. Download file
2. Extract file
3. Read names of variables from features
4. Rename names of variables to more comprensible names
5. Load activity, subject_train, x_train, y_train, subject_test, x_test and y_test in data frames individually. Put names to variables read before.
6. Combine subject_train, x_train, y_train in one data frame using cbind
7. Combine subject_test, x_test, y_test in one data frame using cbind
8. Merge train and test dataframes
9. Join variables dataframe with labels of activity
10. Select variables with names activity, subject, mean and standarddeviation in dataframe
11. Groupping dataframe by activity and subject using dplyr library
12. Summarize each variables (except activity and subject) using dplyr library
13. Write dataset in csv file 
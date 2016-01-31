# Coursera-DataCleaning
Repository to Data Cleaning Course in Coursera


In CodeBook you found description of tidy dataset

=Process

- Download file
- Extract file
- Read names of variables from features
- Rename names of variables to more comprensible names
- Load activity, subject_train, x_train, y_train, subject_test, x_test and y_test in data frames individually. Put names to variables read before.
- Combine subject_train, x_train, y_train in one data frame using cbind
- Combine subject_test, x_test, y_test in one data frame using cbind
- Merge train and test dataframes
- Join variables dataframe with labels of activity
- Select variables with names activity, subject, mean and standarddeviation in dataframe
- Groupping dataframe by activity and subject using dplyr library
- Summarize each variables (except activity and subject) using dplyr library
- Write dataset in csv file 
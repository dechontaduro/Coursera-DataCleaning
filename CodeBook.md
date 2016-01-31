Tidy and summarize data of Human Activity Recognition Using Smartphones Dataset
===============================================================================

Based in dataset published in 
> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
Version 1.0

Author
======
Juan Carlos González

Project Cleaning Data Course Jan-2016

Coursera 

---

Dataset
=======
Based dataset was published with below description of experiment

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

[Refer to full description of original dataset] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Present dataset is a summarize and tidy data of original dataset grouping a subset of variables by Subject and Activity. 
Summarize was performed calculating the mean of each variable in the subset. 
Criteria to take variable to subset was if variable is a Mean or Standard Deviation, others variables in original dataset was discard.

For each record it is provided:
===============================
- An identifier of the subject who carried out the experiment.
- Its activity label. 
- Mean of each variable (86 variables is a subset of variables of original dataset)

The dataset includes the following files:
=========================================

- 'CodeBook.md' 
- 'README.md': Process to obtain this dataset
- 'UCIHAR_SummaryTidyDataset.csv': Tidy dataset

Variables:
==========
- subject: An identifier of the subject who carried out the experiment.
- activity: Its activity label

The below variables follow next rule:
- First segment contains time, frequency or angle refers to time domain signals, Fast Fourier Transform of signals and Angle between to vectors, respectively.
Ej. __time__*bodyaccelerometermeanx*, __frequency__*bodygyroscopemeany*, __angle__*timebodyaccelerometermeangravity*.
- Second segment contains body or gravity refers to the acceleration signal was then separated into body and gravity acceleration signals, respectively.
Ej. *frequency*__body__*accelerometermeanx*
If first segment is angle, second segments indicates vectors to measure angle 
  * tbody vs meangravity
  * timebodyaccelerometermean vs gravity
  * timebodyaccelerometerjerkmean vs gravitymean
  * timebodygyroscopemean vs gravitymean
  * timebodygyroscopejerkmean vs gravitymean
  * x vs gravitymean
  * y vs gravitymean
  * z vs gravitymean
- Third segment contains accelerometer or gyroscope refers to accelerometer and gyroscope 3-axial raw signals from smartphone, respectively
- Forth segment (if apply) contains jerk or magnitude that refers to the body linear acceleration and angular velocity were derived in time to obtain Jerk signals or magnitude of these three-dimensional signals were calculated using the Euclidean norm, respectively.
- Last segment contains mean, standarddeviation that refers to original summarize made to variables.
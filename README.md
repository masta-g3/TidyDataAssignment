TidyDataAssignment
==================

### Description
This repository contains the run_analysis.R script, which is utilized to convert the UCI HAR Dataset files into a tidy data file. This file summarized the information available by only showing the mean and standard deviation of the different features provided in the dataset.

###Instructions
To run the script, make sure you place it within the "UCI HAR Dataset" directory. After this simply source it and run it without passing any parameters. It will do the following:

1. Read and merge the training datasets.
2. Add the corresponding lables for each activity and for each feature.
3. Combine the subject, activity and features measure information into a single dataframe.
4. Filter out the variables not required (ex-mean, ex-stDev) and print out a tidy data file.

The script makes use of the 'reshape' library.

Feel free to contact me for any questions.

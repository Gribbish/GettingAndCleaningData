About the original data

	General information about the orignal data can be find in README.txt, which contains information about procedure, varaibles, and short explanation of other files.


About the transformations and steps in creating final data set

	Final data set was created in couple of steps:
1. Reading the the training and the test sets, and then merges them to create one data set.
2. Extracting only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a new, independent tidy data set with the average of each variable for each activity and each subject.

All the steps were made using the script 'run_analysis.R', and they are explained in 'README.md' file. 


Final data set produced by the script contains four variables:
1. variable
2. Subject_ID
3. Type_of_activity
4. value

1. variable
	Factor variable containing subset of measured features from original data set (features are described in 'features_info.txt' file). Only measurements on the mean and standard deviation were extracted.
Mesurements (factor levels): 
1. tBodyAcc-mean-X 
2. tBodyAcc-mean-Y
3. tBodyAcc-mean-Z 
4. tBodyAcc-std-X
5. tBodyAcc-std-Y 
6. tBodyAcc-std-Z
7. tGravityAcc-mean-X 
8. tGravityAcc-mean-Y
9. tGravityAcc-mean-Z 
10. tGravityAcc-std-X
11. tGravityAcc-std-Y 
12. tGravityAcc-std-Z
13. tBodyAccJerk-mean-X 
14. tBodyAccJerk-mean-Y
15. tBodyAccJerk-mean-Z 
16. tBodyAccJerk-std-X
17. tBodyAccJerk-std-Y 
18. tBodyAccJerk-std-Z
19. tBodyGyro-mean-X 
20. tBodyGyro-mean-Y
21. tBodyGyro-mean-Z 
22. tBodyGyro-std-X
23. tBodyGyro-std-Y 
24. tBodyGyro-std-Z
25. tBodyGyroJerk-mean-X 
26. tBodyGyroJerk-mean-Y
27. tBodyGyroJerk-mean-Z 
28. tBodyGyroJerk-std-X
29. tBodyGyroJerk-std-Y 
30. tBodyGyroJerk-std-Z
31. tBodyAccMag-mean 
32. tBodyAccMag-std
33. tGravityAccMag-mean 
34. tGravityAccMag-std
35. tBodyAccJerkMag-mean 
36. tBodyAccJerkMag-std
37. tBodyGyroMag-mean 
38. tBodyGyroMag-std
39. tBodyGyroJerkMag-mean 
40. tBodyGyroJerkMag-std
41. fBodyAcc-mean-X 
42. fBodyAcc-mean-Y
43. fBodyAcc-mean-Z 
44. fBodyAcc-std-X
45. fBodyAcc-std-Y 
46. fBodyAcc-std-Z
47. fBodyAcc-meanFreq-X 
48. fBodyAcc-meanFreq-Y
49. fBodyAcc-meanFreq-Z 
50. fBodyAccJerk-mean-X
51. fBodyAccJerk-mean-Y 
52. fBodyAccJerk-mean-Z
53. fBodyAccJerk-std-X 
54. fBodyAccJerk-std-Y
55. fBodyAccJerk-std-Z 
56. fBodyAccJerk-meanFreq-X
57. fBodyAccJerk-meanFreq-Y 
58. fBodyAccJerk-meanFreq-Z
59. fBodyGyro-mean-X 
60. fBodyGyro-mean-Y
61. fBodyGyro-mean-Z 
62. fBodyGyro-std-X
63. fBodyGyro-std-Y 
64. fBodyGyro-std-Z
65. fBodyGyro-meanFreq-X 
66. fBodyGyro-meanFreq-Y
67. fBodyGyro-meanFreq-Z 
68. fBodyAccMag-mean
69. fBodyAccMag-std 
70. fBodyAccMag-meanFreq
71. fBodyBodyAccJerkMag-mean 
72. fBodyBodyAccJerkMag-std
73. fBodyBodyAccJerkMag-meanFreq 
74. fBodyBodyGyroMag-mean
75. fBodyBodyGyroMag-std 
76. fBodyBodyGyroMag-meanFreq
77. fBodyBodyGyroJerkMag-mean 
78. fBodyBodyGyroJerkMag-std
79. fBodyBodyGyroJerkMag-meanFreq 


2. Subject_ID
	Integer variable with values identifying different subjects (range: 1-30).


3. Type_of_activity
	Factor variable with levels referring to type of activity subjects were performing. 
Levels:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING


4. value
	Numeric variable representing average of each measurement for each activity for each subject.


#Steps 
1. Read data into R. Merge them with rbind into x, y, subject data.
2. Read "feautures.txt" and find the names contain "mean" or "std". And name colNames of "x_data" with them.
3. Read "activity_labels.txt" and change numbers of "y_data" into the activity names. Name colNames of "y_data" with "activity"
4. Name colNames of "sub_data" with "subject"
5. Merge all three data together with cbind
6. Use ddply to calculate colMeans of all_data.


#Variables
- subject : Numbers indicate the participants in the test
- activity : Names of tested activity 
- tBodyAcc : Time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. But features are normalized and bounded within [-1,1]
- etc..
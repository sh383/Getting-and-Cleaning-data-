# files
- run_analysis.R : contains codes performing analysis.

- codebook.md : contains informations on variables and explains anlysis.

- averages_data.txt : is the final product that is cleaned up.

#Steps 
1. Read data into R. Merge them with rbind into x, y, subject data.
2. Read "feautures.txt" and find the names contain "mean" or "std". And change column names of "x_data" into features names.
3. Read "activity_labels.txt" and change numbers of "y_data" into the activity names. Name column name of "y_data" with "activity"
4. Name colNames of "sub_data" with "subject"
5. Merge all three data together with cbind
6. Use ddply to calculate colMeans of all_data.



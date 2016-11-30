library(plyr)

#1
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/Y_train.txt")
sub_train <- read.table("train/subject_train.txt")
y_test <- read.table("test/Y_test.txt")
x_test <- read.table("test/X_test.txt")
sub_test <- read.table("test/subject_test.txt")

x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
sub_data <- rbind(sub_train, sub_test)


#2
features <- read.table("features.txt")
mean_and_std <- grep("-(mean|std)\\(\\)", features[, 2])
x_data <- x_data[,mean_and_std]
names(x_data) <- features[mean_and_std, 2]


#3 
activities <- read.table("activity_labels.txt")
y_data[, 1] <- activities[y_data[, 1], 2]
names(y_data) <- "activity"


#4
names(sub_data) <- "subject"
all_data <- cbind(x_data, y_data, sub_data)


#5
averages_data <- ddply(all_data, .(subject, activity), function(x) colMeans(x[,1:66]))
write.table(averages_data, "averages_data.txt", row.names = FALSE)
#Reading (and labeling) training data
train.set <- read.table("UCI HAR Dataset/train/X_train.txt", as.is=TRUE)
label.file <- read.table("UCI HAR Dataset/features.txt", as.is=TRUE)
labels <- label.file[, 2]
colnames(train.set) <- labels

activity.train <- read.table("UCI HAR Dataset/train/y_train.txt", as.is=TRUE)
colnames(activity.train) <- "Type_of_activity"

subject.train <- read.table("UCI HAR Dataset/train/subject_train.txt", as.is=TRUE)
colnames(subject.train) <- "Subject_ID"

train.data <- cbind(subject.train, activity.train, train.set)


#Reading (and labeling) test data
test.set <- read.table("UCI HAR Dataset/test/X_test.txt", as.is=TRUE)
colnames(test.set) <- labels

activity.test <- read.table("UCI HAR Dataset/test/y_test.txt", as.is=TRUE)
colnames(activity.test) <- "Type_of_activity"

subject.test <- read.table("UCI HAR Dataset/test/subject_test.txt", as.is=TRUE)
colnames(subject.test) <- "Subject_ID"

test.data <- cbind(subject.test, activity.test, test.set)


#Combining all the data
data.all <- rbind(train.data, test.data)


#Extracting only the measurements on mean and standrd deviation
data.id <- data.all[,1:2]
data.msd <- data.all[, grepl("mean()|std()", colnames(data.all))]
data.extract <- cbind(data.id, data.msd)

#Activity names
class(data.extract$Type_of_activity)
data.extract$Type_of_activity <- as.factor(data.extract$Type_of_activity)
data.extract$Type_of_activity <- factor(data.extract$Type_of_activity,
                                        levels = c(1, 2, 3, 4, 5, 6),
                                        labels = c("WALKING", "WALKING_UPSTAIRS",                                                                                                                "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

#Variable names
names(data.extract)
names(data.extract) <- gsub("\\()", "", names(data.extract))

#Tidy data set with the average of each variable for each activity and each subject
library(reshape2)
data.melt <- melt(data.extract, id = c("Subject_ID", "Type_of_activity"), measure.vars = names(data.extract[, 3:81]))

tidydataset <- aggregate(value ~ variable + Subject_ID + Type_of_activity, data = data.melt, mean)


write.table(tidydataset, "tidydataset.txt", row.name=FALSE)

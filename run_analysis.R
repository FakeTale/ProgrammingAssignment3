library(dplyr)

#Read all the data files
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
s_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
s_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activity <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)

#Merge tain and test data
x <- as.data.frame(rbind(x_train, x_test))
y <- as.data.frame(rbind(y_train, y_test))
subject <- as.data.frame(rbind(s_train, s_test))
names(subject) <- 'subject'

#Change column names to features name from the file
names(x) <- features$V2
#Select only columns with mean() and std() in the name
x1 <- x[, grep('.*mean\\(\\)|std\\(\\)', names(x))]

#Change activity id to its name
lookUp <- as.character(activity$V2)
activities <- lookUp[as.vector(y$V1)]

#Repace t to time and f to freq in the columns names
bnames <- sub('^t', 'time', x = names(x1))
bnames <- sub('^f', 'freq', x = bnames)
#Replace - in the column names with . and remove ()
bnames <- gsub('-', '.', x = bnames)
bnames <- gsub('\\(\\)', '', x = bnames)
names(x1) <- bnames

#Merge all the data together
df <- as.data.frame(cbind(x1, activities, subject))
#Aggregate data to get means of the features by subject and activity
df_2 <- df %>% group_by(subject, activities) %>% summarise_all(mean)

#Write final table to the file
write.table(df_2, file='./TidyData.txt', row.name=FALSE)

#library(dplyr)

x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
s_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
s_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

x <- as.data.frame(rbind(x_train, x_test))
y <- as.data.frame(rbind(y_train, y_test))
subject <- as.data.frame(rbind(s_train, s_test))
names(subject) <- 'subject'

names(x) <- features$V2
x1 <- x[, grep('.*mean\\(\\)|std\\(\\)', names(x))]
lookUp <- as.character(activity$V2)
activities <- lookUp[as.vector(y$V1)]

bnames <- sub('^t', 'time', x = names(x1))
bnames <- sub('^f', 'freq', x = bnames)
bnames <- gsub('-', '.', x = bnames)
bnames <- gsub('\\(\\)', '', x = bnames)
names(x1) <- bnames

df <- as.data.frame(cbind(x1, activities, subject))
df_2 <- df %>% group_by(subject, activities) %>% summarise_all(mean)

write.table(df_2, file='./TidyData.txt')
library(dplyr)
## reading in Training datasets
TrainX<-read.table("train/X_train.txt",header = FALSE)
TrainY<-read.table("train/y_train.txt",header = FALSE)
TrainSub<-read.table("train/subject_train.txt",header = FALSE)
## reading in Training datasets
TestX<-read.table("test/X_test.txt",header = FALSE)
TestY<-read.table("test/y_test.txt",header = FALSE)
TestSub<-read.table("test/subject_test.txt",header = FALSE)

##Merging Training & Test Datasets
Feature<-rbind(TrainX,TestX)
Y<-rbind(TrainY,TestY)
Subject<-rbind(TrainSub,TestSub)

## reading in index file
feature_list<-read.table("features.txt",header = FALSE)
activity_labels<-read.table("activity_labels.txt",header = FALSE)

## using features.txt to lable the variables
clean_list<-sapply(feature_list$V2,y<-function(x) { gsub("\\()|-|,","",x)})
colnames(Feature)<-clean_list

## de-duplicated column
Feature<-Feature[!duplicated(colnames(Feature))] %>%
select(matches("mean|std"))

## merging the activity
Train_activity<-inner_join(Y,activity_labels)
Full<-cbind(Subject,Train_activity$V2,Feature)
## Rename the 1st twwo variables
colnames(Full)[1]<-"Subject"
colnames(Full)[2]<-"ActivityPerformed"
## group By
By_Act_Sub<-group_by(Full,ActivityPerformed,Subject)
## Getting Mean
SummarySet<-summarize_each(By_Act_Sub,funs(mean))
## Writing the output
write.table(SummarySet,"TidySet.txt",row.names = FALSE)
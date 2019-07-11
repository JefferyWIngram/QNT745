library('ggplot2')
library('reshape2')
library('tidyverse')

# set working directory for data. Change this to your folder on your compter
workingDir <-  '/Users/green/Desktop/Data'
WorkingFile <- paste(workingDir,"/MetObjectsFinal(1).csv",collapse = NULL, sep='')
setwd(workingDir)

#Import Met Objects Final
MetObjects <- read.csv(file = WorkingFile)

MetObj <- MetObjects[c('Department','Is.Public.Domain','NewClassification','Object.Mean.Date')]

densityplot(MetObjInt[,'Object.End.Date'])
densityplot(MetObjInt[,'Object.Mean.Date'])

MetObj$Classification <- MetObj$NewClassification

ggplot(data=MetObj)+geom_bar(aes(x=Classification,fill=Department))+theme_bw()+theme(axis.text.x=element_text(angle=90, hjust=1))
ggplot(data=MetObj)+geom_bar(aes(x=Is.Public.Domain,fill=Department))+theme_bw()+theme(axis.text.x=element_text(angle=90, hjust=1))

# Bubble Chart
theme_set(theme_bw())  # pre-set the bw theme.
g <- ggplot(MetObj, aes(Department, Classification)) + 
  labs(subtitle="Met Museum: Department vs Classification",
       title="Bubble chart",xlab="Department",ylab="Object Classification") + theme(axis.text.x=element_text(angle=45,hjust=1)) 

g + geom_jitter(aes(col=Is.Public.Domain) + scale_color_manual("Public Domain",labels = c("No", "Yes"), values = c("blue", "red"))

#, size=Object.Mean.Date)) 

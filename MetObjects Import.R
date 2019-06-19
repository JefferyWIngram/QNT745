# set working directory for data. Change this to your folder on your compter
workingDir <- "E:/Special/Desktop/MetMasterdata/Data"
WorkingFile <- paste(workingDir,"/MetObjects.csv",collapse = NULL, sep='')
setwd(workingDir)
#Import Met Object
MetObjects <- read.csv(file = WorkingFile)
#List Column names in cosole
colnames(MetObjects)
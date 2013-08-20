#load training data
data_list = list()
for(i in 1:200){
    dat = read.csv(paste("data/",i,".csv",sep=""))
    data_list = c(data_list,list(dat))
}
target = read.csv("target/trainLabels.csv")
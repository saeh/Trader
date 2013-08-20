#Battlefin Kaggle Comp
#Thomas Atkins - team Saeh
#20-8-2013
ptm=proc.time()
setwd("/users/Tom/Battlefin")

source("code/load_data_train.r")
source("code/day_feature.r")

features = day_feature(data_list[[1]])

num_f = dim(features)[2]+1

Y=c()
X1=list()
for(i in 1:50){
    print(i)
    features = day_feature(data_list[[i]])
    m = matrix(data=rep(t(features),198),nrow=198,byrow=TRUE)
    colnames(m) = colnames(features)
    m = data.frame(stock=paste("O",1:198,sep=""),m)
    X1 =rbind(X1,m)
    Y=c(Y,target[i,2:199])
}

X2=c()
for(i in 51:100){
    print(i)
    features = day_feature(data_list[[i]])
    m = matrix(data=rep(t(features),198),nrow=198,byrow=TRUE)
    colnames(m) = colnames(features)
    m = data.frame(stock=paste("O",1:198,sep=""),m)
    X2 =rbind(X2,m)
    Y=c(Y,target[i,2:199])
}

X3=c()
for(i in 101:150){
    print(i)
    features = day_feature(data_list[[i]])
    m = matrix(data=rep(t(features),198),nrow=198,byrow=TRUE)
    colnames(m) = colnames(features)
    m = data.frame(stock=paste("O",1:198,sep=""),m)
    X3 =rbind(X3,m)
    Y=c(Y,target[i,2:199])
}

X4=c()
for(i in 151:200){
    print(i)
    features = day_feature(data_list[[i]])
    m = matrix(data=rep(t(features),198),nrow=198,byrow=TRUE)
    colnames(m) = colnames(features)
    m = data.frame(stock=paste("O",1:198,sep=""),m)
    X4 =rbind(X4,m)
    Y=c(Y,target[i,2:199])
}

X = rbind(X1,X2,X3,X4)
print(proc.time()-ptm)

#Battlefin Kaggle Comp
#Thomas Atkins - team Saeh
#20-8-2013
ptm=proc.time()
setwd("/users/Tom/Battlefin")

#load required functions
source("code/day_feature.r")

#load data from files
source("code/load_data_train.r")

#extract features
source("code/extract_features.r")

print(proc.time()-ptm)

library(randomForest)

rf = randomForest(x = X[1:1980,],y = Y[1:1980], ntree=50)
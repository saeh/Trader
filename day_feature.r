#extract the features from one day
day_feature <- function(dat){
    day_mean = t(colMeans(dat))
    colnames(day_mean) = paste("day_mean_",colnames(day_mean),sep="")
    
    mean_2hr = t(colMeans(dat[32:55,]))
    colnames(mean_2hr) = paste("2hr_mean_",colnames(mean_2hr),sep="")
    
    mean_halfhr = t(colMeans(dat[50:55,]))
    colnames(mean_halfhr) = paste("0.5hr_mean_",colnames(mean_halfhr),sep="")
    
    latest_price = dat[55,]
    colnames(latest_price) = paste("latest_",colnames(latest_price),sep="")
    
    day_var = t(diag(var(dat)))
    colnames(day_var) = paste("day_var_",colnames(day_var),sep="")
    
    var_2hr = t(diag(var(dat[32:55,])))
    colnames(var_2hr) = paste("2hr_var_",colnames(var_2hr),sep="")
    
    var_halfhr = t(diag(var(dat[50:55,])))
    colnames(var_halfhr) = paste("0.5hr_var_",colnames(var_halfhr),sep="")
    
    features = cbind(day_mean,mean_2hr,mean_halfhr,latest_price,day_var,var_2hr,var_halfhr)
    return(features)
}

judgeKNN <- function(test, data, len, class.length,classname){   #len is  the nummber of the document in the all training set 
	index <- rep(1:10, class.length) 
	dist <- c(); 
	dist <- disKNN(test,data,len);  
	dist.zero <- index[dist == 0];
	if( length(dist.zero) >= 1){
		return(dist.zero); #
	}else{
		return(which.max(table(index[order(dist)[1:5]])));
		#return(classname[which.max(table(index[order(dist)[1:5]]))]);
	}
} 


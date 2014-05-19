disKNN <- function(datatest, datatrain, len){  #len is  the nummber of the document in the all training set 
	distVec <- c(); 
	
	for(i in 1 : len){
		dist <- sum((datatest - datatrain[i,])^2);
		distVec <- append(distVec , dist );
	}		
	return(distVec );  
}
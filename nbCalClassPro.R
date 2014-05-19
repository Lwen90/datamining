nbCalClassPro <- function(word, index){
	
	dic <- c(word);
	#name <- paste(name.train[index],".train.dic.matrix",sep = "");
	#corp <- get(name);
	if( index == 1){
		corp <- acq.df.classify.yes;
	}else{
		corp <- acq.df.classify.no;
	}
	#corp <- get(name.train[index]);
	if( dic %in% attributes(corp)$names){
		dtm.sub <- corp[,dic];
	}else{
		dtm.sub <- 0;
	}
	#prob <- (sum(dtm.sub)+1)/(ncol(corp) + list.num[index]);
	prob <- (sum(dtm.sub)+1)/(ncol(corp) + sum(corp));

	return(prob)
}
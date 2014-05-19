nbGetEachClassTotalNum <- function(){
	list.num <- c();
	for(i in 1 : length(all.class.name.train)){
		name <- paste(all.class.name.train[i],".train",sep = "");
		len <- 0;
		doc <- get(name);
		for(j in 1: length(doc)){	
			words <- strsplit(doc[[j]]," ");
			len = len + length(words[[1]]);
		}
		list.num <- append(list.num,len);
	}
	list.num;
}
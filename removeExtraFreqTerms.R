removeExtraFreqTerms <- function(freqTerms.list){
	len <- length(freqTerms.list);
	for( i in 1 : ( len-1)){ 
	i.len <- length(freqTerms.list[[i]]);
			for( j in (i+1) : len){
				for(k in 1 : length(freqTerms.list[[j]])){
					bool.result <- freqTerms.list[[j]] %in% freqTerms.list[[i]];
					freqTerms.list[[j]] <- freqTerms.list[[j]][!bool.result];
				}
			}
		}
	
	len.after.remove <- c();
	for( i in 1 : len){ 
		len.after.remove <- append(len.after.remove, freqTerms.list[[i]]);
	}
	len.after.remove <- sort(len.after.remove);
	len.after.remove
	
}

nbGetEachClassPro <- function(class.length){
	num <- 0;
	for(i in 1 : 10){
		num = num + class.length[[i]];
	}

	pro <- c();
	for(i in 1 : 10){
		pro <- append(pro ,class.length[[i]]/num);
	}
	pro
}
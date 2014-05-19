testKNN <- function(tests,trainset, len,class.length,classname){ #len is  the nummber of the document in the all training set 
	index1 <- rep(1:10, class.length);
	error<-0;
	success <- 0;   
	for(i in 1: nrow(tests)){  
		test <- tests[i,];
        	result <- judgeKNN(test,trainset,len,class.length,classname);
		print(".........");
		print(i);
		print(index1[i] %in% result);
		if(index1[i] %in% result){  
			success<-success +1;  
		}else{
			error<-error+1;
		}
	}

}
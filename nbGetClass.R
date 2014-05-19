nbGetClass <- function(tests,feature, name.train){
	class.type <- c();
	success <- 0;
	error <- 0;
	for( i in 1 : length(tests)){
		
		class.pro <- nbTrain(tests[i],feature)
		index <- which.max(class.pro)
		class.type <- append(class.type, index);
		if( index == 1){
			success <- success + 1;
		}else{
			error <- error +1;
		}
	}
	print("....test..total..");
	print(length(tests));
	print("...success ....");
	print(success );
	print("...error....");
	print(error);
	return(class.type);


}
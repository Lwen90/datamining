nbTrain <- function(test,feature){
	#print("........nbTrain start1......");

	test.dic <- DocumentTermMatrix(test,list(dictionary = feature))
	test.matrix <- as.matrix(test.dic);
	test.feature <- feature[test.matrix != 0];
	if(length(test.feature) == 0) return(c(-1,0));
	pro <- c();
	for(i in 1 : 2){
		pro.sub <- all.class.list.pro[[i]];
		for( j in 1 : length(test.feature)){
			word <- test.feature[j];
			result <- nbCalClassPro(word, i);
			pro.sub <- pro.sub * result ;
	
		}
		pro <- append(pro, pro.sub);
		

	}
	#print(pro);
	return(pro);
}
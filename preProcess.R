preProcess <- function(rt){
	## Convert to Plain Text Documents
	##rt <- tm_map(rt, as.PlainTextDocument);

	## Convert to Lower Case
	rt <- tm_map(rt, tolower);

	## Remove Stopwords
	rt <- tm_map(rt, removeWords, stopwords("english"));

	## Stemming
	rt <- tm_map(rt, stemDocument);

	## Remove Punctuations
	rt <- tm_map(rt, removePunctuation);

	## Remove Numbers
	rt <- tm_map(rt, removeNumbers);

	## Eliminating Extra White Spaces
	rt <- tm_map(rt, stripWhitespace);
	
	return(rt);
}
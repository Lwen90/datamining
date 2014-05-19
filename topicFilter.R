topicFilter <- function (object, s, topicOfDoc) {
    query.df <- prescindMeta(object, c("Topics"))
    attach(query.df)
    boolFilter <- c()
    i <- 1
        
    while (i <= length(Topics)) {    
      res <- c(s) %in% Topics[[i]]
      boolFilter <- c(boolFilter, res)
      i <- i + 1
    }    
    if (!topicOfDoc) 
      boolFilter <- unlist(lapply(boolFilter,`!`))
      
    try (result <- rownames(query.df) %in% row.names(query.df[boolFilter,]))
        
    detach(query.df)
    result
}
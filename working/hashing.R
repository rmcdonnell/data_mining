## Hash functions associated with Ch. 3 (finding similar items)


s1 <- unique(c("a","b","c","d","e"))
s2 <- unique(c("a","a","b","b","e"))
s3 <- unique(c("c","c","d","d","e"))
s4 <- unique(c("d","d","e","e","b"))


# matrix representation of sets
setsToMatrix <- function(setList){
  main_set <- unique(unlist(setList))
  out <- matrix(data = main_set)
  for (item in setList){
    column <- as.numeric(main_set %in% item)
    out <- cbind(out,column)
  }
  return(out)
}

setsToMatrix(list(s1,s2,s3,s4))

minHash <- function(){
  # 
}
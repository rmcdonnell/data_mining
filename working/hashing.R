## Hash functions associated with Ch. 3 (finding similar items)

# matrix representation of sets
setsToMatrix <- function(setList){
  print(names(setList))
  main_set <- unique(unlist(setList))
  out <- matrix(nrow = length(main_set))
  column_list <- c()
  for (n,item in setList){
    # print(names(item))
    column_list <- c(column_list, item)
    column <- as.numeric(main_set %in% item)
    out <- cbind(out,column)
  }
  f <- function(x) return(deparse(substitute(x)))
  # print(lapply(setList, f))
  # colnames(out) <- column_list
  rownames(out) <- main_set
  return(out[,-1])
}

S1 <- unique(c("a","d"))
S2 <- unique(c("c"))
S3 <- unique(c("b","d","e"))
S4 <- unique(c("a","c","d"))
testie <- setsToMatrix(list(S1,S2,S3,S4))
testie
summary(testie)
lsd <- list(S1,S2,S3,S4)
deparse(eval(substitute(lsd)))
minHash <- function(){
  # 
}
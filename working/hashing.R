## Hash functions associated with Ch. 3 (finding similar items)

# matrix representation of sets
setsToMatrix <- function(universal_set, sets){
  out <- matrix(nrow = length(universal_set), ncol = 0)
  for (item in sets){
    column <- as.numeric(universal_set %in% get(item))
    out <- cbind(out,column)
  }
  colnames(out) <- sets
  rownames(out) <- universal_set
  return(out)
}

S1 <- unique(c("a","d"))
S2 <- unique(c("c"))
S3 <- unique(c("b","d","e"))
S4 <- unique(c("a","c","d"))
set_O_sets <- c('S1','S2','S3','S4')
univ_set <- c("a","b",'c','d','e')
setsToMatrix(univ_set, set_O_sets)
univ_set2 <- c('b')

minHash <- function(){
  
}
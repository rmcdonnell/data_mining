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

minHash <- function(set_name, set_matrix){
  set <- as.matrix(set_matrix[,set_name])
  while(nrow(set) > 0){
    if(set[1,] == 1){
      return(rownames(set)[1])
    }
    set <- as.matrix(set[-1,])
  }
}

S1 <- unique(c("a","d"))
S2 <- unique(c("c"))
S3 <- unique(c("b","d","e"))
S4 <- unique(c("a","c","d"))
set_O_sets <- c('S1','S2','S3','S4')
univ_set <- c("a","b",'c','d','e')
setsToMatrix(univ_set, set_O_sets)
# answer: 
# S1 S2 S3 S4
# a  1  0  0  1
# b  0  0  1  0
# c  0  1  0  1
# d  1  0  1  1
# e  0  0  1  0

univ_set <- c('b','e','a','d','c')
minHash('S2',setsToMatrix(univ_set, set_O_sets))
# answer: "c"
minHash('S3',setsToMatrix(univ_set, set_O_sets))
# answer: "b"
minHash('S4',setsToMatrix(univ_set, set_O_sets))
# answer: "a"

## Hash functions associated with Ch. 3 (finding similar items)


s1 <- unique(c("a","b","c","d","e"))
s2 <- unique(c("a","a","b","b","e"))
s3 <- unique(c("c","c","d","d","e"))
s4 <- unique(c("d","d","e","e","b"))

setUnion <- union(s1,s2)
setUnion <- union(setUnion, s3)
setUnion <- union(setUnion, s4)

setMatrix <- matrix(nrow=length(setUnion),ncol=4)

matrixRes <- cbind(setUnion, setMatrix)
setList <- list(s1,s2,s3,s4)

# matrix representation of sets
setsToMatrix <- function(matrixRes, setList){
  for (vec in setList) {
    for (item in vec) {
      
      matrixRes[,1] 
    }


  }
}

minHash <- function(){
  # 
}

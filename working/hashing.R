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
  counter <- 1
  out <- NULL
  for(elm in set_matrix[,set_name]){
    # print(set[1,])
    if(elm == 1){
      out <- c(out,rownames(set_matrix)[counter])
    }
    counter <- counter + 1
  }
  return(out)
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

trial_stuff <- c <- 10000
pX <- pY <- pZ <- 0
while(trial_stuff > 0){
  name_list <- NULL
  MAX <- 2
  for(i in seq(1, MAX)){
    var_name <- paste0("Set_",i)
    name_list <- c(name_list, var_name)
  }
  universe_set <- NULL
  for(elm in name_list){
    letter_len <- floor(runif(1,1,26))
    elm_in_set <- letters[floor(runif(letter_len,1,26))]
    assign(elm, elm_in_set)
    universe_set <- union(universe_set, elm_in_set)
  }
  universe_set <- sample(universe_set)
  set_of_matrix <- setsToMatrix(universe_set, name_list)
  foo <- NULL
  for(item in name_list){
    foo <- c(foo, minHash(item, set_of_matrix))
  }
  if(length(unique(foo))==1){
    prob <- prob + 1
  }
  trial_stuff <- trial_stuff - 1
}
prob/c
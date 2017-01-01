setwd("/Users/samantha/sillyR")
getwd()

# "[ ]" * same class as the original, "[[ ]]" frm list/data frame
# $ extract frm list/data frame by name ~ [[ ]]

charV <- c("a","b","c","d","b","c")
#numerical index
charV[2]
charV[2:4]
#logical index
charV[charV > "b"]
charV > "b"


## List
numL <- list(foo = 1:4, bar=0.6, baz=c("hi","hello"))
numL
numL[1]
numL[2]
numL$bar
numL[["bar"]] # same as $
numL["bar"] # return a list
numL$foo
numL[["foo"]]
numL["foo"]
numL[c(1,3)] #single [ ] for multi object return

# [[ ]] for computed indices, $ for literal names
name <- "foo"
numL$foo
numL[[name]]
numL$name

L2 <- list(a=list(10,12,14), b=c(3.12,2.34))
L2
L2[[1]]
L2[[c(1,3)]]
L2[[1]][[3]]
L2[[c(2,2)]]


## Matrix
M1 <- matrix(1:6, 2, 3)
M1
typeof(M1)
M1
M1[[1]]
M1[1,2] #single [ ] same class (but default drop is True)
M1[1,2, drop = FALSE] # return 1 by 1 matrix
typeof(M1[1])
M1[[1,2]]
M1[1,] # first row - got a vector
M1[1, , drop=FALSE] # get a matrix
M1[,2] #second col


#--------
# PARTIAL MATCHING [[ ]] or $
x <- list(abc = 1:5)
x$a
x$abc
x$d
x[["a"]]
x[["a", exact=FALSE]]
x[["d", exact=FALSE]]
x["a"]
x["abc"]


## REMOVE NA(missing) values
x <- c(1,2,NA,4,NA,5)
is.na(x)
bad <- is.na(x)  #logical vector
x[!bad] #remove by subsetting



x <- c(  1, 2, NA, NA, NA, 5)
y <- c("a","b",NA,"d",NA,"f")
good <- complete.cases(x,y) # both have values *same length
good
x[good]
y[good]
# subset rows with all values present xx[good,][1:6,]



## Vectorized Operations, parallel computation
#                1,2,3,4
x<- 1:4; y<-6:8 #6,7,8,6 for cal *better match/multiple of length
x+y
#logical T/F
x>2
x>=2
y==8
x*y
x/y


x<- matrix(1:4,2,2)
y<- matrix(rep(10,4),2,2) #repeat 10 * 4 times
z<- matrix(c(10,5),1,2)
x
y
z
x*y #element-wise multiplication
x/y
x %*% y #true matrix multiplication
z %*% x #true matrix multiplication









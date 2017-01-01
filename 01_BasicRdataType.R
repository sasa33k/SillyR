#setwd("~/sillyR")
#getwd()

#R expressions
# combine / concatenate (vector), assignment operator <-
c1 <- c("a","b","c")
c2 <- c(1,2,3)
c3 <- c(1:6)
c4 <- 1:3 #integer
c5 <- c("A", TRUE, 1.1)

c1
c1[0]
c1[2]
typeof(c1)
c2[0]
typeof(c2)
c3[0]
typeof(c3)
typeof(c5) #coersion
print(c2); #explicit call print function
c3 #auto printing
# repeat c2 for the shorter length --> 1,2,3,1,2,3 
c2+c3
# c4 must have the same length with c2 // or a multiple of c2
c4
c2+c4
c4 <- 0:6
c2+c4
class(c4)
as.numeric()
as.logical(c4)
as.character(c4)



# 5 objects "atomic" classes: 
# character, numeric, integer, complex, logical(T/F)
# Basic object: "vector" (**same class | except "list")
d1 <- vector("numeric", length=10)
d1
d2 <- 1
typeof(d2)
d2 <- 1L  # add L suffix to specify integer explicitly
typeof(d2)
1/0 # Infinity
0/0 # Not a Number // missing value
d3 <- 1+4i #complex number
typeof(d3)
#LIST that support multi class
d4 <- list(1,"a",TRUE,1+4i)
d4[0]
d4[1]
d4[2]


#matrix
m1 <- matrix(nrow=2, ncol=3)
m1
dim(m1) # number of row and columns
attributes(m1)

m2 <- 1:9
dim(m2) <- c(3,3)
m2

m3v <- c("a","b","c","d")
m3 <- matrix(m3v, nrow=2, ncol=3) #by default, vertical first
m3
m3 <- matrix(m3v, nrow=2, ncol=3, byrow = TRUE) #horizontal first
m3

#matrix by column/row binding
m4x <- 1:3
m4y <- 6:10
m4 <- cbind(m4x, m4y) #vertical first ** warn for unmatched length
rbind(m4x, m4y) #horizontal first
class(m4)
attributes(m4)


# R attributes:
# names, dimention names (e.g. matrix)
# class
# length
# user-defined attributes / metadata
c1
summary(c1)





#factors - represent categorical data - e.g. labels "Male/Female"
f1 <- factor(c("yes","yes","no","yes","no","nth"))
f1
table(f1)
unclass(f1)

f2 <- factor(c("yes","yes","no","yes","no","nth"), 
             levels=c("yes","no")) 
# define baseline levels, and ordering
f2
table(f2)
f2u <- unclass(f2)
f2u
is.na(f2u) #test if a number is NA or not a num
is.nan(f2u)
f2u[6]
is.na(f2u[6])




## DATA Frames - special type of list, each col wit same length
# of different classes / data types
# attribute: row.names
# create with read.table() or read.csv()
# convert to matrix > data.matrix() ** same class --> coersion
df1 <-data.frame(foo=5:8, bar=c(T,T,F,F))
df1
nrow(df1)
ncol(df1)
attributes(df1)


df2 <-data.frame(foo=1:3, bar=c(T,T,F,F,"a","b")) 
# length must b a multiple
df2
nrow(df2)
ncol(df2)
attributes(df2)


#vector names
v1 <- 1:4
v1
names(v1)

names(v1) <- c("foo","bar","abc")
v1
names(v1)

#list names
l1 <- list(a=1,b=3,c=5)
l1
names(l1)

m <- matrix(1:4, nrow=2)
m
list(c("a","b"),c("c","d"))
dimnames(m) <- list(c("a","b"),c("c","d")) #row names, col names
m





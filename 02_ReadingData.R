#setwd("~/sillyR")
#getwd()

# read tabular data
# read.table, read.csv (vs write.table)

#readLines (vs writeLines)
#source - read in R code files e.g. functions (vs dump)
#dget - read in R code files *objects (vs dput)
#load - reading in saved workspaces (vs save)
#unserialize --> read R objects in binary form (vs serialize)


#---------------
# read.table arguments
# file: file name / connection
# header: logical indicating if the file has a header line (var names)
# sep: string - how col are separated, e.g. ",", " "
# colClasses(O): character vector - class of each col (numeric, char...)
# nrows(0): num of rows
# comment.char: character indicating comment character 
#               (e.g. # - ignore to the right) "" if no comment
# skip: num of lines to skip from the beginning
# stringsAsFactors: code as factor? (default:T) character -> factor
# *** RAM required, set colClasses run MUCH faster

# nrow - help memory usage / allocation 
# --> use first 100 row determine clases, then read all data)
# estimate nrow * ncol * 8bytes/numeric -- read *2
##
#inital <- read.table("foo.txt", nrows=100)
#classes <- sapply(initial, class)
#tabAll <- read.table("foo.txt", colClasses = classes)



#### read other Texual formats
# [dump(multi) vs dget(single R obj)] & dput - result format is edit-able, potentially recoverable @ corruption
# ** preserve metadata (sacrificing some readability), space inefficient
# work better with version control (track changes), long live, "Unix"
# deparsing R object with dput and read it back using dget
dft <- data.frame(a=1, b="a")
dft
dput(dft)
dput(dft,file="dft.R")
new.dft <- dget("dft.R")
new.dft


x <- "foo"
y <- data.frame(a=1, b="a")
dump(c("x","y"), file="dump.R")
rm(x,y)
source("dump.R")
x
y


#--------------
#outside connections
#file, gzfile(gzip), bzfile(bzip2), url
str(file)
# function (description = "", open = "", blocking = TRUE, encoding = getOption("encoding"), 
#          raw = FALSE, method = getOption("url.method", "default"))  
# r-read only, w-write, a-append, rb/wb/ab (binary@Windows)

con <- file("foo.txt","r")
data <- read.csv(con)
close(con)

#same as
data <-read.csv("foo.txt")


con2<- url("http://blog.neten.de/posts/2012/08/02/rstudio-non-utf8-warning-message/","r")
x <- readLines(con2,10)
x
head(x)
tail(x)
close(con2)






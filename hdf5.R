## this example is about how to read/write and create hdf5 files. 
## first we need to install biocLite.R but it may not be reached by install packages option
## so we need to source "http://bioconductor.org/biocLite.R" url in order to use libraries. 

source("http://bioconductor.org/biocLite.R")
biocLite("rhdf5")  ## so we can load hdf5 r package 
library(rhdf5)

## so we are good to go!
## first thing h5createFile and h5createGroup
## we can create an example.h5 file and play with it. Note: hdf5 files extension is .h5

created <- h5createFile("example.h5")

## and now we are creating groups under the file 

created <- h5createGroup("example.h5","A")
created <- h5createGroup("example.h5","B")
created <- h5createGroup("example.h5","C")
created <- h5createGroup("example.h5","A/a")
created <- h5createGroup("example.h5","A/a/1")

h5ls("example.h5") ## ls function is a common cmd for many operating systems and prog lang. means list of files 

## so lets write some data into file
## we have a matrix 

my_matrix <- matrix (1:10,5,2)
h5write(my_matrix,"example.h5","A/a/1")

my_matrix2 <- matrix(11:20,5,2)
h5write(my_matirx2,"example.h5","A/a/2")


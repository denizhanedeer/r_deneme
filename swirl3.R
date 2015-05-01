## in order to create sequence of numbers we have different methods 
## ":" or seq() 

my_seq1 <- 1:10
my_seq2 <- 15:1
my_seq3 <- pi:10

my_seq4 <- seq(1,20,by=0.5)
my_seq5 <- seq(5,20,lenght=30)

## if we want to have sequence with the same length of my_seq5

my_seq51 <- 1:length(my_seq5)

## also there is another way

my_seq52 <- seq(along.with = my_seq5)

my_seq53 <- seq_along(my_seq5)

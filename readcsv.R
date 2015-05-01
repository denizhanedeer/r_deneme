direct <- getwd()
file <- "mydata.csv"
final_route <- paste(direct,file)
output <- read.csv(final_route,header =TRUE,nrow=100)

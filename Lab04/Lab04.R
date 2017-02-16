#writing a for loop that prints hi 10 times
  for (i in seq(1,10)) {
    print("hi")
    
  }
#writing a loop that shows Timmy his money for 8 weeks
  
  initial<- 10
  allowance <- 5
  gum <- 1.34
 
  for (i in seq(1,8)) {
    currentbalance <- initial + allowance - 2*gum
    initial<- currentbalance
    print(initial)
  }
#problem 3
  ipop <- 2000
  
  for (i  in 1:7) {
    newpop <- ipop - ipop*0.05
    ipop <- newpop
    print(ipop)
  }
#problem 4
  n1 <- 2500
  K <- 10000
  r <- 0.8
  
  for( i in seq(1,12)){
    newn <- n1 + ( r*n1*((K-n1)/K))
    n1 <- newn
    print(n1)
  }

  for(i in seq(1,18)){
    blah <- seq(1,18)*3
    print(blah)
  
  }
#problem 1d
  v1 <- rep(0,18)
  v1[1] <- 1
  for(i in 2:18) {
    v1[i]<- 1 + 2*v1[i-1]
    
   
  }
#fibonacci sequence, first 20 numbers
  fseq <- rep(0,20)
  fseq[2] <- 1
  for (i in 3:20 ) {
    fseq[i] <- fseq[i-2] + fseq[i-1]
    
  }
#redo question 4
  n1 <- 2500
  time <- seq(1,12)
  K <- 10000
  r <- 0.8
  generations <- 12
  abundance <- rep(n1,generations)
  
  for (i in 2:generations) {
   abundance[i] <- abundance[i-1] + (r*abundance[i-1]*((K-abundance[i-1])/K)) 
   
  }
  plot(x = time, y = abundance, xlab = "generations", ylab = "number of individuals", main = "Logarithmic growth")
  
#set working directory
  setwd("~/flore/Documents/gitsandbox/CompBioLabsAndHomework/Lab04/")
  CO2data <- read.csv("CO2_data_cut_paste.csv")
#preallocate matrix for data
  nRows <- dim(CO2data)[1]
  nCols <- dim(CO2data)[2]
  CO2matrix <- matrix(0, nRows,nCols)
  x <- colnames(CO2data)
  colnames(CO2matrix) <- x
#now the nested loop
  for (i in 2:nRows) {
    for (j in 2:nCols) {
      CO2matrix[i,j] <- ((CO2data[i,j] - CO2data[i-1,j ])/CO2data[i-1,j])*100
    }
  }
  write.csv(x = CO2matrix, file = "YearlyPercentChangesINCO2.csv")
  
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
#problem3 - writing a loop that shows yearly 5% decrease in population
  initialpop <- 2000                 #initial population
  
  for (i  in 1:7) {
    newpop <- initialpop - initialpop*0.05
    initialpop <- newpop
    print(newpop)
  }
#problem 4- creating a loop for logistical growth
  n1 <- 2500                    #initial population
  K <- 10000                    #carrying capacity of the environment
  r <- 0.8                      #growth rate
  
  for( i in seq(1,12)){
    newn <- n1 + ( r*n1*((K-n1)/K))
    n1 <- newn
    print(newn)
  }
  
#Page 2 problem 1
  #1a
   blah <- rep(0,18)
  #1b
  
  for(i in seq(1,18)){
    blah <- seq(1,18)*3
    
  
  }
   print(blah)
#problem 1c
  v1 <- rep(0,18)
  v1[1] <- 1
  #problem 1d
  for(i in 2:18) {
    v1[i]<- 1 + 2*v1[i-1]
    
   
  }
  print(v1)
  
# creating the first 20 numbers of the fibonachi sequence with a for loop
  fseq <- rep(0,20)
  fseq[2] <- 1
  for (i in 3:20 ) {
    fseq[i] <- fseq[i-2] + fseq[i-1]
    
  }
  print(fseq)
#redo question 4
  n1 <- 2500
  time <- seq(1,12)                         #number of years
  K <- 10000
  r <- 0.8
                        
  abundance <- rep(n1,length(time))
  
  for (i in 2:length(time)) {
   abundance[i] <- abundance[i-1] + (r*abundance[i-1]*((K-abundance[i-1])/K)) 
   
  }
  plot(x = time, y = abundance, xlab = "generations", ylab = "number of individuals", main = "Logarithmic growth")
  
#set working directory
  setwd("C:/Users/flore/Documents/gitsandbox/CompBioLabsAndHomework/Lab04/")
  CO2data <- read.csv("CO2_data_cut_paste.csv")
#preallocate matrix for data
  nRows <- dim(CO2data)[1]
  nCols <- dim(CO2data)[2]
  CO2matrix <- matrix(0, nRows,nCols)
  titles <- colnames(CO2data)
  colnames(CO2matrix) <- titles
#now the nested loop
  for (i in 2:nRows) {
    for (j in 2:nCols) {
      CO2matrix[i,j] <- ((CO2data[i,j] - CO2data[i-1,j ])/CO2data[i-1,j])*100
    }
  }
#for some reason the the loop above was creating a matrix with all zeroes in the years column so I did the following to fix it
  co2years <- CO2data$Year                        #create a vector of the years from the data frame
#made a for loop that replaced the first column of the matrix with the elements from the new vector
  for(i in 1:length(co2years)){
    CO2matrix[i,1] <- co2years[i]
    }
  write.csv(x = CO2matrix, file = "YearlyPercentChangesINCO2.csv")
  
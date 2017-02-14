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
  for( i in 1:12){
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
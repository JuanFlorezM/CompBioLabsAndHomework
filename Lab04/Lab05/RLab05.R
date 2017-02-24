#problem 1
  x <- 8
  if( x >= 5){
    cat("Integer", x ,"is greater than or equal to five ")
  }
#problem 2
 #read in the data
   lab5vector <- read.csv("Vector1.csv")
   # make a loop that reads every value in lab5vector and replaces negative values with NA
   for( i in 1:length(lab5vector$x)) {
     if( lab5vector$x[i] < 0) {
       lab5vector$x[i] <- NA
      }
   }
   #replace all the NA values with zeros using which function
   NAincices <- which(is.na(lab5vector$x))
   lab5vector$x[NAincices] <- 0
   #create a vector of all data values that are between 50 and 100
   fittyhundredindex <- which(lab5vector$x > 50 & lab5vector$x < 100)
   
   #finding the first year gas production is not zero
   gasyears <- which(CO2data$Gas > 0)    #create a vector with all the positons of non zero data values for gas production
   CO2data$Year[gasyears]                #indexes all the years gas production was greater than zero
   #What was the first year for which data on "Gas" emissions were non-zero?
   print(CO2data$Year[gasyears][1])
   
   #During which years were "Total" emissions between 200 and 300 million metric tons of carbon?
   milliontons <- which(CO2data$Total > 200 & CO2data$Total < 300) #make a vector of all the indicies that have values between 200 and 300
   print( CO2data$Year[milliontons]) 
   
#Part II
   #"Lotka-Volterra" predator-prey model
   totalGenerations <- 1000
   initPrey <- 100 	# initial prey abundance
   initPred <- 10		# initial predator abundance
   a <- 0.01 		# attack rate
   r <- 0.2 		# growth rate of prey
   m <- 0.05 		# mortality rate of predators
   k <- 0.1 		# conversion constant of prey into predators
   time <- seq(1,totalGenerations)     #time vector
   n <- rep(0,totalGenerations)      #number of prey at any given time
   p <- rep(0, totalGenerations)     #numer of predators at any given time
   
   n[1] <- initPrey
   p[1] <- initPred
   #loop
   for (t in 2:length(time)) {
     n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
     
     p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])
    if(n[t] < 0)    #using an if conditional in the for loop to check if a value is negative and change it to 0
      n[t] <- 0
    
   }
   plot(x = time, y = n)    #plotting the results to make sure they make biological sense
   lines(time, n)
   plot(x = time, y = p)
   lines(time, p)
   
   
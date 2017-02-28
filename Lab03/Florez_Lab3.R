# Lab step#3 create variables for number of chips and guests
    guests <- 8
    chips <- 5
    
  # Lab step#5 create a variable for amount of chips consumed per guest
    chipconsumption <- .4
    
  # Lab step#6 calculate the the expected amount of left over chips with the function: chips - (chipconsumption) * (guests +1)
    chips - (chipconsumption*(guests +1))
    
  # Lab step#8 create a vector for every friend that contains their rankings for each movie
    penny <- c(5,7,6,3,1,2,4)
    jenny <- c(4,3,2,7,6,5,1)
    Lenny <- c(1,7,3,4,6,5,2)
    Stewie <- c(6,7,5,4,3,1,2)
    myself <- c(7,6,5,1,2,3,4)
  # Lab step#9 create variables for the 4th elements in vector penny and vector Lenny
    PennyIV <- penny[4]
    LennyIV <- Lenny[4]
  # Lab step#10 make a matrix from the previous 5 vectors we made before using the cbind function
    AllRankings <- cbind( penny, jenny, Lenny, Stewie, myself)
  # Lab step#11    str(PennyIV)     gives back the integer 3
                  #str(penny)       gives back vector or list of rankings
                  #str(AllRankings) gives back an entire matrix of numbers
    
  #Lab step#12  making data frames using a matrix(using as.dataframe), and vectors(data.frame)
    RankingsDataFrame1 <- as.data.frame(AllRankings)
    RankingsDataFrame2 <- data.frame(penny, jenny, Lenny, Stewie, myself)
    
  #The dim functions shows how many rows and columns of data are in the data set, so it's the same for AllRankings(made using cbind),
  #and RankingsDataFrame1(made using as.dataframe). This is also why the function "==" outputs TRUE for all elements. The main difference
  #between the data sets is that R views "AllRankings" as 5 lists of 7 integers, while "RankingsDataFrame1" is one unit of data.
    
  #Lab step#14 create vector of characteres representing the episode numbers
    Episodenames <- c("I","II","III","IV","V","VI","VII")
  #Lab step15
    row.names(RankingsDataFrame1) <- Episodenames        #use the row.names function to add the movie titles to the data objects
    row.names(RankingsDataFrame2) <- Episodenames
    row.names(AllRankings) <- Episodenames
  #Lab step16 
    AllRankings[3,]
  #Lab step 17 accessing the fourth column of a data frame
    RankingsDataFrame1[,4]
  #Lab step 18, accessing the rankings for episode V
    AllRankings["V",]
  #Lab sstep 19 accessing Penny's rankings for Episode II
    AllRankings["II","jenny"]
  #Lab step 20 accessing everyone's rankings for episodes IV VI
    AllRankings[4:6,]
  #Lab step 21 accessing everyones rankings for episodes II, V, and VII
    AllRankings[c(2,5,7),]
  #Lab step 22 accessing Penny's, Jenny's, and Stewie's rankings for episodes IV and VI
    AllRankings[c("IV", "VI"), c("penny", "jenny", "Stewie")]
    
  #Lab step 23 switching Lenny's Rankings for episodes II and V
    AllRankings
    i <-AllRankings[2,3] 
    j <- AllRankings[5,3]
    AllRankings[5,3] <- i
    AllRankings[2,3] <- j
  #Lab step 24 using row and column names for indexing and accessing specific elements
    AllRankings["III", "penny"]
    RankingsDataFrame2["III","penny"]
  #Lab step 25 undoing the changes made in step 23 using row and column names
    AllRankings["II", "Lenny"] <- i
    AllRankings["V", "Lenny"] <- j
  #Lab ste 26 redoing the switch from step 23 with the $ operator
    RankingsDataFrame1$Lenny[2] <- j
    RankingsDataFrame1$Lenny[5] <- i
    RankingsDataFrame1        # just to prove it works
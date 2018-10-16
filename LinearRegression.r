
#PART-I
#------
#------
sumSS <- 0
dataS = read.table("/home/siriuslight/Downloads/my_data.txt")

#------------------------------------------------------------------------------------------------------------

model <- lm(y ~ x1 , data = dataS , x=T , y=T);
print(model)
plot(dataS$x1 , dataS$y)
abline(model , col="red")

predictedY <- predict(model , dataS)
print(predictedY)
error1 <- abs(predictedY - dataS$y)
plot(error1)
squareerror1 <- error1 * error1;
points(squareerror1 , col="red" , pch=16 )
sumSS[1] <- sum(squareerror1)
plot(predictedY , xlab="y as x1")
points(dataS$y , col="red" , pch =15)

#------------------------------------------------------------------------------------------------------------

model <- lm(y ~ x2 , data = dataS , x=T , y=T);
print(model)
plot(dataS$x2 , dataS$y)
abline(model , col="red")

predictedY <- predict(model , dataS)
print(predictedY)
error2 <- abs(predictedY - dataS$y)
plot(error2)
squareerror2 <- error2 * error2;
points(squareerror2 , col="red" , pch=16 )
sumSS[2] <- sum(squareerror2)
plot(predictedY , xlab="y as x2")
points(dataS$y , col="red" , pch =15)

#------------------------------------------------------------------------------------------------------------

model <- lm(y ~ x3 , data = dataS , x=T , y=T);
print(model)
plot(dataS$x3 , dataS$y)
abline(model , col="red")

predictedY <- predict(model , dataS)
print(predictedY)
error3 <- abs(predictedY - dataS$y)
plot(error3)
squareerror3 <- error3 * error3;
points(squareerror3 , col="red" , pch=16 )
sumSS[3] <- sum(squareerror3)
plot(predictedY , xlab="y as x3")
points(dataS$y , col="red" , pch =15)

#------------------------------------------------------------------------------------------------------------

model <- lm(y ~ x4 , data = dataS , x=T , y=T);
print(model)
plot(dataS$x4 , dataS$y)
abline(model , col="red")

predictedY <- predict(model , dataS)
print(predictedY)
error4 <- abs(predictedY - dataS$y)
plot(error4)
squareerror4 <- error4 * error4;
points(squareerror4 , col="red" , pch=16 )
sumSS[4] <- sum(squareerror4)
plot(predictedY , xlab="y as x4")
points(dataS$y , col="red" , pch =15)

#------------------------------------------------------------------------------------------------------------

model <- lm(y ~ x5 , data = dataS , x=T , y=T);
print(model)
plot(dataS$x5 , dataS$y)
abline(model , col="red")

predictedY <- predict(model , dataS)
print(predictedY)
error5 <- abs(predictedY - dataS$y)
plot(error5)
squareerror5 <- error5 * error5;
points(squareerror5 , col="red" , pch=16 )
sumSS[5] <- sum(squareerror5)
plot(predictedY , xlab="y as x5")
points(dataS$y , col="red" , pch =15)

#-----------------------------------------------------------------------------------------------------------

model <- lm(y ~ x6 , data = dataS , x=T , y=T);
print(model)
plot(dataS$x6 , dataS$y)
abline(model , col="red")

predictedY <- predict(model , dataS)
print(predictedY)
error6 <- abs(predictedY - dataS$y)
plot(error6)
squareerror6 <- error6 * error6;
points(squareerror6 , col="red" , pch=16 )
sumSS[6] <- sum(squareerror6)
plot(predictedY , xlab="y as x6")
points(dataS$y , col="red" , pch =15)

#-----------------------------------------------------------------------------------------------------------

model <- lm(y ~ x7 , data = dataS , x=T , y=T);
print(model)
plot(dataS$x7 , dataS$y)
abline(model , col="red")

predictedY <- predict(model , dataS)
print(predictedY)
error7 <- abs(predictedY - dataS$y)
plot(error7)
squareerror7 <- error7 * error7;
points(squareerror7 , col="red" , pch=16 )
sumSS[7] <- sum(squareerror7)
plot(predictedY , xlab="y as x7")
points(dataS$y , col="red" , pch =15)

#----------------------------------------------------------------------------------------------------------

model <- lm(y ~ x1 + x2 , data = dataS , x=T , y=T);
print(model)

predictedY <- predict(model , dataS)
print(predictedY)
error8 <- abs(predictedY - dataS$y)
plot(error8)
squareerror8 <- error8 * error8;
points(squareerror8 , col="red" , pch=16 )
sumSS[8] <- sum(squareerror8)
plot(predictedY , xlab="y as x1 x2")
points(dataS$y , col="red" , pch =15)

#---------------------------------------------------------------------------------------------------------

model <- lm(y ~ x1+ x2 + x3 , data = dataS , x=T , y=T);
abline(model , col="red")

predictedY <- predict(model , dataS)
print(predictedY)
error9 <- abs(predictedY - dataS$y)
plot(error9)
squareerror9 <- error9 * error9;
points(squareerror9 , col="red" , pch=16 )
sumSS[9] <- sum(squareerror9)
plot(predictedY , xlab="y as x1 x2 x3")
points(dataS$y , col="red" , pch =15)

#---------------------------------------------------------------------------------------------------------

model <- lm(y ~ x1+ x2 + x3 + x4 , data = dataS , x=T , y=T);
abline(model , col="red")

predictedY <- predict(model , dataS)
print(predictedY)
error10 <- abs(predictedY - dataS$y)
plot(error10)
squareerror10 <- error10 * error10;
points(squareerror10 , col="red" , pch=16 )
sumSS[10] <- sum(squareerror10)
plot(predictedY , xlab="y as x1 x2 x3 x4")
points(dataS$y , col="red" , pch =15)

#---------------------------------------------------------------------------------------------------------

model <- lm(y ~ x1+ x2 + x3 +x4 + x5 , data = dataS , x=T , y=T);
abline(model , col="red")

predictedY <- predict(model , dataS)
print(predictedY)
error11 <- abs(predictedY - dataS$y)
plot(error11)
squareerror11 <- error11 * error11;
points(squareerror11 , col="red" , pch=16 )
sumSS[11] <- sum(squareerror11)
plot(predictedY , xlab="y as x1 x2 x3 x4 x5")
points(dataS$y , col="red" , pch =15)

#---------------------------------------------------------------------------------------------------------

model <- lm(y ~ x1+ x2 + x3 +x4 + x5 + x6 , data = dataS , x=T , y=T);
abline(model , col="red")

predictedY <- predict(model , dataS)
print(predictedY)
error12 <- abs(predictedY - dataS$y)
plot(error12)
squareerror12 <- error12 * error12;
points(squareerror12 , col="red" , pch=16 )
sumSS[12] <- sum(squareerror12)
plot(predictedY , xlab="y as x1 x2 x3 x4 x5 x6")
points(dataS$y , col="red" , pch =15)

#---------------------------------------------------------------------------------------------------------

model <- lm(y ~ x1+ x2 + x3 +x4 + x5 + x6 + x7, data = dataS , x=T , y=T);
abline(model , col="red")

predictedY <- predict(model , dataS)
print(predictedY)
error13 <- abs(predictedY - dataS$y)
plot(error13)
squareerror13 <- error13 * error13;
points(squareerror13 , col="red" , pch=16 )
sumSS[13] <- sum(squareerror13)
plot(predictedY , xlab="y as x1 x2 x3 x4 x5 x6 x7 ")
points(dataS$y , col="red" , pch =15)

#---------------------------------------------------------------------------------------------------------

plot(sumSS , type="l")


#PART-II
#-------
#-------
TrsumSS <- 0 
TssumSS <- 0
TrMSE <- 0
TsMSE <- 0
p <- 0

for(i in 1:10)
{
  trSize = 10 * i;
  
  trainingData <- head(dataS , trSize)
  trmodel <- lm(y ~ x1 + x2 +x3 +x4 +x5 +x6 +x7 , data =dataS , x=T , y=T)
  predictedY <- predict ( trmodel , trainingData)
  
  predictedY
  trainingData$y
  trerror <- abs(predictedY - trainingData$y)
  trsquarederror <- trerror * trerror
  TrsumSS[i] <- sum (trsquarederror)
  TrMSE[i] <- mean (trsquarederror)
  
  testData <- head(dataS , -trSize)
  predictedY <- predict(trmodel , testData)
  predictedY
  testData$y
  tserror <- abs( predictedY - testData$y)
  tssquarederror <- tserror * tserror
  TssumSS[i] <- sum(tssquarederror)
  TsMSE[i] <- mean(tssquarederror)
  
}

plot(TrsumSS , main="effect of size of training and test error")
lines(x = TrsumSS , y= NULL , type ="l" , col="blue")
points(TssumSS , pch=10 , col="red")
lines(x=TssumSS , y=NULL , type="l" , col="red")

plot(TrMSE , main ="effect of size on training MSE(blue) and test MSE(red)")

lines(x=TrMSE  , y=NULL , type="l" , col="blue")
points(TsMSE , pch=10 , col="red")
lines(x=TsMSE , y=NULL , type="l" , col="red")

#PART-III
#--------
#--------

MSE <- 0

folds <- cut(seq(1,nrow(dataS)) , breaks = 10 , labels = FALSE)

for(i in 1: 10)
{
  testIndexes <- which(folds==i , arr.ind = TRUE)
  testData <- dataS[testIndexes,]
  trainData <- dataS[-testIndexes,]
  
  trmodel <- lm(y ~ x1 + x2 +x3 +x4 +x5 +x6 +x7 , data =trainData , x=T , y=T)
  predictedY <- predict ( trmodel , testData)
  error <- abs(predictedY - testData$y)
  squarederror <- error * error
  MSE[i] <- mean (squarederror)
}

plot(MSE)
lines(x = MSE , y= NULL , type ="l" , col="blue")
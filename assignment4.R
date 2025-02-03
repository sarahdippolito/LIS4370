Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)

bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)

first <- c(1,1,1,1,0,0,0,0,NA,1)

second <- c(0,0,1,1,0,0,1,1,1,1)

finaldecision <- c(0,1,0,1,0,1,0,1,1,1)

medical.df <- data.frame(Freq, bloodp, first, second, finaldecision)
medical.df

par(mfrow = c(1,2))
boxplot(bloodp, data=medical.df, main="Boxplot of Blood Pressure", col="lightpink")
hist(bloodp, main="Histogram of Blood Pressure", col="lightpink")


boxplot(first, main="Boxplot of GD Assesment", col="lightblue")
hist(first, breaks=2, main="Histogram of GD Assesment", col="lightblue")


first1 <- c("Bad", "Bad", "Bad", "Bad", "Good", "Good", "Good", "Good", NA, "Bad")
first1 <- table(first1)
barplot(first1, main="Barplot of GD Assesment", col=c("red", "green"))

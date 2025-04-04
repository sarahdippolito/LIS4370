#Original
tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) } return(outlier.vec) }
#To Run
#changed turkey.outlier to turkey.outliers and included the return statement in the function
tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outliers(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) 
  return(outlier.vec) }
}
#To Work
set.seed(142)
data <- data.frame(
  X1 = c(rnorm(50, mean = 0, sd = 1), 10),  
  X2 = c(rnorm(50, mean = 5, sd = 1), 20),   
  X3 = rnorm(51, mean = 2, sd = 1)           
)
tukey.outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  return(x< lower_bound | x> upper_bound)
}
tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- tukey.outliers(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x)){
    outlier.vec[i] <- any(outliers[i,]) } 
  return(outlier.vec) 
}
tukey_multiple(data)



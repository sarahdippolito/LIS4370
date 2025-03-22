#devtools::create("Package")
####EDA
##Basic Stats
EDABASIC <- function(df){
means <-  c()
medians <- c()
IQRS <- c()
original <- c()
rows <- c()
Q25 <- c()
Q75 <- c()
mins <- c()
maxs <- c()
values <- c()
hists <- c()
for(i in 1:ncol(df)){
  if(typeof(df[, i])=="double"){
    means <- c(means, mean(df[, i]))
    medians <- c(medians, median(df[, i]))
    IQRS <- c(IQRS, IQR(df[, i]))
    rows <- c(rows, colnames(df)[i])
    Q25 <- c(Q25, quantile(df[, i], 0.25))
    Q75 <- c(Q75, quantile(df[, i], 0.75))
    mins <- c(mins, min(df[, i]))
    maxs <- c(maxs, max(df[, i]))
  }

if(typeof(df[, i]) != "double"){
values <- c(values, table(df[,i]))
}
}
data_frame <- data.frame(means, IQRS, mins, Q25, medians, Q75, maxs)
rownames(data_frame) <- rows
colnames(data_frame) <- c("MEAN", "IQR", "MIN", "25%", "MEDIAN", "75%", "MAX")
cat("NUMERIC VALUE STATISTICS \n")
print(data_frame)
cat("\nNON-NUMERIC VALUES \n")
print(values)
for(r in 1:ncol(df)){
  if(typeof(df[, r]) == "double"){
  hist(df[, r], main=colnames(df)[r], xlab=colnames(df)[r])
  }
  else if(typeof(df[, r]) != "double"){
    barplot(table(df[, r]), main=colnames(df)[r])
 }
}
}
df = mtcars
EDABASIC(df)

df <- data.frame(letters = c("a","e","f","t","w","f","w","f","y","e","r","t","y"), numbers = c(1,23,4,5,6,7,8,8,7,5,56,56,2))
EDABASIC(df)



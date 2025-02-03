Name = c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_political = c(4, 62, 51, 21, 2, 14, 15)
NCB_political = c(12, 75, 43, 19, 1, 21, 19)
results = cbind(Name, ABC_political, NCB_political)
results
results.df = data.frame(Name, ABC_political, NCB_political)
results.df
r = rowMeans(results.df[,2:3])
r.df = data.frame(Name, r)
mean(as.matrix(results.df[,2:3]))

#

Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
Name
ABC_result  <- c(4, 62, 51, 21, 2, 14, 15)
ABC_result
CBS_result  <- c(12, 75, 43, 19, 1, 21, 19) 
CBS_result
election_poles <- data.frame(Name, ABC_result, CBS_result)
election_poles 
colnames(election_poles) <- c("Candidate", "ABC Pole", "CBC Pole")
election_poles



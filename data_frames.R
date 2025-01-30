Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
Name

ABC_result  <- c(4, 62, 51, 21, 2, 14, 15)
ABC_result

CBS_result  <- c(12, 75, 43, 19, 1, 21, 19) 
CBS_result

election_polls <- data.frame(Name, ABC_result, CBS_result)
election_polls 

colnames(election_polls) <- c("Candidate", "ABC Poll", "CBS Poll")
election_polls
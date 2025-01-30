Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
Name

ABC_result  <- c(4, 62, 51, 21, 2, 14, 15)
ABC_result

CBS_result  <- c(12, 75, 43, 19, 1, 21, 19) 
CBS_result

election_poles <- data.frame(Name, ABC_result, CBS_result)
election_poles 

colnames(election_poles) <- c("Candidate", "ABC Pole", "CBC Pole")
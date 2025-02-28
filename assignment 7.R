plot(x=iris[, "Petal.Width"], y=iris[, "Sepal.Width"])

summary(iris)

mean(iris[, "Petal.Length"])

class(iris)


library("pryr")
otype(iris)

g <- c(2,3,1,1,4)
class(g)

gg <- list(2,3,1,1,4)
class(gg)

ggg <- data.frame(2,3,1,1,4)
class(ggg)


#S3
S3_method = function(gives_best_effort=TRUE, class="course_USF"){
  student = list(hard_work = gives_best_effort, course=class)
  attr(student, "class") = "Information_Science"
  student
  return(student)
}
information = S3_method()
otype(information)
sarah = S3_method(gives_best_effort=TRUE, class = "R Programming")
sarah$hard_work
otype(sarah)


#S4
S4_method = setClass("failed", slots=c(pass="logical", grade="numeric"),
                     prototype=list(pass=FALSE, grade=0.0), 
                     validity = function(object){
                       if((object@pass=FALSE || object@grade<60)){
                         return(TRUE)} else{return(FALSE)}
                       }
               )
S4_method() 
did_I_fail <- S4_method()
did_I_fail
otype(did_I_fail)
grades <- S4_method(pass=FALSE, grade=50)
grades@pass
grades@grade


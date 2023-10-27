#'@title semPro
#'This function can be used to visualize student progress academically over the course of one semester.
#'@param data Inserts the data frame you'd like to use 
#'@param student Insert student name to receive a visual progress of student academic performance. 
#'@examples 
#'semPro(grade, "Abreu, Jose")
#'@export

semPro= function(data, student){
  
  Grade <- subset(data, data[["Student"]] == student)
  
  Grade <- unlist(Grade[,3:17])
  plot(Grade, type = "l", lty=2, xlab= "Assignment #", col='plum')
  return(plot)
}

semPro(classScores, "Abreu, Jose")




#'@title weighted_grade
#'This function is used to calculate the weighted average for students over the course of a semester.
#'@param data Inserts the data frame you'd like to use 
#'@param exam1 Inserts the column (exam grades) you would like to take into account for overall grade 
#'@param exam2 Inserts the column (exam grades) you would like to take into account for overall grade
#'@param final Inserts the column (exam grades) you would like to take into account for overall grade
#'@param lab Inserts the column (lab score) you would like to take into account for overall grade
#'@param students Space to specify which row (students) you would like to calculate the average for to add into weighted grade. To call these, add in row range.
#'@param prbSet Space to specify which columns (problem sets) you would to like calculate the average for to add into weighted grade. To call these, add in column range... 
#'@examples 
#'weighted_grade(grade, "Exam.1", "Exam.2", "Final.exam", "Lab", students=1:166, prbSet=7:18)
#'@export

weighted_grade= function(data, exam1, exam2, final, lab, students, prbSet){
  subSec<- data[students, prbSet]
  
  meanie<- apply(subSec,1,FUN=mean)
  
  data$meanGrade<- meanie
  
  weighted<- ((data[[exam1]] * .2) + (data[[exam2]] * .2) + (data[[final]] * .3) + (data[[lab]] * .2) + (data$meanGrade * .1))
  data$weightedTotal<- weighted
  
  return(data)
}
weighted_grade(classScores, "Exam.1", "Exam.2", "Final.exam", "Lab", students=1:166, prbSet=7:18)

data("classScores")

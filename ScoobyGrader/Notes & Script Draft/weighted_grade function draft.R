grade<- read.table("class_scores.csv", sep=",", header=TRUE)

weighted_grade= function(data, exam1, exam2, final, lab, students, prbSet){
  subSec<- data[students, prbSet]
  
  meanie<- apply(subSec,1,FUN=mean)
  
  data$meanGrade<- meanie
  
  weighted<- ((data[[exam1]] * .2) + (data[[exam2]] * .2) + (data[[final]] * .3) + (data[[lab]] * .2) + (data$meanGrade * .1))
  data$weightedTotal<- weighted
}
weighted_grade(grade, "Exam.1", "Exam.2", "Final.exam", "Lab", row=1:166, col=7:18)
weighted_grade(grade)
View(weighted_grade)


#'@title ScoobyGrade
#'This function can be used to visualize histograms plots inspired by the spooky cast of Scoopy Doo. Designed with grade distribution for assignments in mind.
#'@param data Inserts the data frame you'd like to use 
#'@param assignment Inserts the column you would like to plot 
#'@param scoobCharac Assign the color palette of a Scooby Doo crewmember for the histogram. Options are: Shaggy, Fred, Velma, Daphne, and Scooby.
#'@examples 
#'ScoobyGrade(classScores, "Final.exam", "Scooby")
#'@export

ScoobyGrade= function(data, assignment, scoobCharac){
 
  if (scoobCharac=="Shaggy"){
    hist(data[ ,assignment],xlim= c(50,100), main= "Grade Distribution", xlab= "Grade", ylab= "# of Students", col=c("olivedrab","tomato4"), border= "black")
  } else if (scoobCharac=="Fred"){
    hist(data[ ,assignment],xlim= c(50,100), main= "Grade Distribution", xlab= "Grade", ylab= "# of Students", col=c("white", "deepskyblue3"), border= "orange2")
  } else if (scoobCharac=="Velma"){
    hist(data[ ,assignment],xlim= c(50,100), main= "Grade Distribution", xlab= "Grade", ylab= "# of Students", col="orange1", border= "firebrick3")
  } else if (scoobCharac=="Daphne"){
    hist(data[ ,assignment],xlim= c(50,100), main= "Grade Distribution", xlab= "Grade", ylab= "# of Students", col=c("plum4", "thistle"), border= "olivedrab2")
  } else if (scoobCharac=="Scooby"){
    hist(data[ ,assignment], xlim= c(50,100), main= "Grade Distribution", xlab= "Grade", ylab= "# of Students", col=c("tan3", "black"), border= "turquoise3")
  }
}




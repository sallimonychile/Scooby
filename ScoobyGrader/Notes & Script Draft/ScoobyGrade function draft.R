formated<- read.csv("BIOL431 (1).csv", header=TRUE)
View(formated)

ScoobyGrade= function(data,assignment, scoobCharac){
 
  if (scoobCharac=="Shaggy"){
    hist(data[ ,assignment], main= "Grade Distribution", xlab= "Grade", ylab= "# of Students", col=c("olivedrab","tomato4"), border= "black")
  } else if (scoobCharac=="Fred"){
    hist(data[ ,assignment], main= "Grade Distribution", xlab= "Grade", ylab= "# of Students", col=c("white", "royalblue3"), border= "orange2")
  } else if (scoobCharac=="Velma"){
    hist(data[ ,assignment], main= "Grade Distribution", xlab= "Grade", ylab= "# of Students", col="orange1", border= "firebrick3")
  } else if (scoobCharac=="Daphne"){
    hist(data[ ,assignment], main= "Grade Distribution", xlab= "Grade", ylab= "# of Students", col=c("darkorchid3", "plum1"), border= "olivedrab2")
  } else if (scoobCharac=="Scooby"){
    hist(data[ ,assignment], main= "Grade Distribution", xlab= "Grade", ylab= "# of Students", col=c("tan3", "black"), border= "turquoise3")
  }
}

ScoobyGrade(formated, "Final.exam", "Fred")



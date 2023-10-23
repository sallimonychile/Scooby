formated<- read.csv("BIOL431 (1).csv", header=TRUE)

semPro= function(data, student){
  plot(data=("Student":student), type= 'p', lty=2, col='plum')
}

semPro(formated, "Abreu, Jose")

# way to add x-axis name to each point

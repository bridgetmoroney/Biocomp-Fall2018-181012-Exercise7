#setting working directory to Exercise 7 folder
setwd("/Users/bridgetmoroney/Desktop/Biocomp-Fall2018-181012-Exercise7/")
#loading iris.csv file from folder
iris=read.csv("iris.csv",stringsAsFactors = F)
#defining function called odds which can return the odd rows of an dataframe passed to it
odds=function(x){
  #defining one variable to index argument by starting at row one and counting every other row, returning all columns
  one=x[seq(1,nrow(x),by=2),]
  return(one)
}
#passing iris dataframe through odds function
odds(iris)

#defining function called species count to return number of observations of certain species
speciesCount=function(x){
  #defining variable to subset specific species in dataframe
  species=iris[iris$Species == x, ]
  #counting number of rows in the indexed iris file containing only one species 
  count=nrow(species)
  return(count)
}
#trying function for a certain species which returns 50 observations
speciescount("virginica")

#creating function to return dataframe of certain petal widths
widthSelect=function(x){
  #defining petal to subset iris by selecting rows with Sepal Width greater than a certain number
 petal=iris[iris$Sepal.Width>x,]
 return(petal)
}
#testing function with width of 3.3
widthSelect(3.3)

#creating function to write .csv with specific data for a species
speciesCSV=function(x){
  #subsetting data for specific species
  sub=iris[iris$Species == x, ]
  #writing .csv file of sub using paste to add .csv file name extension
  write.csv(sub, file=paste(x,".csv",sep=""))
}
#testing function with virginica to successfully create virginica.csv file
speciesCSV("virginica")


pollutantmean<-function(directory,pollutant,id=1:332){
  
  val<-c()
  for(i in 1:length(id)){
    if (id[i]<=332 & id[i]>=1){
      temp <- list.files(path=directory,pattern="*.csv",full.names = TRUE)
      frame<-read.csv(temp[id[i]])
      val<-c(val,frame[[pollutant]])
      
    }else{
      print("Enter id between 1 to 332 only")
      break
    }
    
  }
  print(mean(val,na.rm=TRUE))
  
}
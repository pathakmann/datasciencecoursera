corr<-function(directory,threshold=0){
  core<-c()
  complete("C:/Users/manish pathak/Documents/rprog_data_specdata/specdata")
  for (i in 1:332){
      
      if (threshold<=cnt[i]){
          frame<-read.csv(temp[i])
          core<-c(core,cor(frame$nitrate,frame$sulfate,use = "na.or.complete"))
      } else{
        next()
      }
  }
  if(length(core)!=0){
    core
  }else{
    numeric(0)
    }
  
}
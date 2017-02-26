cnt<-c()
iden<-c()
complete<-function(directory,id=1:332){
  cnt<<-c()
  iden<<-c()
  #was trying to extract the values: prime<-matrix(data = c(0,0),nrow=1,ncol=2,byrow = TRUE,dimnames =list(id,c("sul","nit")))
  for(i in 1:length(id)){
    if (id[i]<=332 & id[i]>=1){
      temp <- list.files(path=directory,pattern="*.csv",full.names = TRUE)
      frame<-read.csv(temp[id[i]])
      y<-sum(!is.na(frame$nitrate & frame$sulfate))
      cnt[i]<<-y
      iden[i]<<-id[i]
      prime1<-data.frame(ID = iden ,count= cnt)
      
    }else{
      print("Enter id between 1 to 332 only")
      break
    }
    
  }
  prime1
  #print(sum(cnt))
}
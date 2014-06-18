keySearch <-
function(keyword){
      output <- getURL(paste("http://services.onetcenter.org/v1.2/ws/mnm/search?keyword=",keyword,sep=""), userpwd=paste(get("creds",envir=cacheEnv)[[1]],":",get("creds",envir=cacheEnv)[[2]], sep=""), httpauth = 1L)
      output <- xmlParse(output)
      keyOutput <- xmlToDataFrame(nodes = getNodeSet(output, "//career"))
      return(keyOutput[,1:2])
}
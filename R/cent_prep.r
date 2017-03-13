# script to prep data

# read in centrality metrics from shapefile, normalize
library(shapefiles)
read.shapefile('./data/site2012corr') -> sc12

c1n <- sc12$dbf$dbf$cc1/sc12$dbf$dbf$bseg
c2n <- sc12$dbf$dbf$cc2/sc12$dbf$dbf$bseg
c3n <- sc12$dbf$dbf$cc3/sc12$dbf$dbf$bseg
c4n <- sc12$dbf$dbf$cc4/sc12$dbf$dbf$bseg
c5n <- sc12$dbf$dbf$cc5/sc12$dbf$dbf$bseg
c6n <- sc12$dbf$dbf$cc6/sc12$dbf$dbf$bseg
c7n <- sc12$dbf$dbf$cc7/sc12$dbf$dbf$bseg
c8n <- sc12$dbf$dbf$cc8/sc12$dbf$dbf$bseg
c9n <- sc12$dbf$dbf$cc9/sc12$dbf$dbf$bseg
c10n <- sc12$dbf$dbf$cc10/sc12$dbf$dbf$bseg

bcn <- function(bc,bseg){
  out <- rep(0, length(bc))
  for(i in 1:length(bc)){
    out[i] <- bc[i]/(bseg[i]*(bseg[i] - 1)/2)
  }
  return(out)
}

bcns <- bcn(sc12$dbf$dbf$bc,sc12$dbf$dbf$bseg)
site <- as.character(sc12$dbf$dbf$Site)
cents <- cbind(c1n,c2n,c3n,c4n,c5n,c6n,c7n,c8n,c9n,c10n,bcns)
as.data.frame(cbind(Site, cents))->cents

library(data.table)
setkey(cents$site)

#library(dplyr)
unique(cents)-> cents
save(cents, file='./data/cents.Rdata')

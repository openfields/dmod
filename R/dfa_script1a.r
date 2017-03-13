# pull data in for zero-inflated model

source('./R/tokunaga.r')
#tokunaga(dfa[,12],dfa[,10])->tok

head(dfamerge)

tokunaga(dfamerge$LengthRatio,dfamerge$HortonsBifurcRatio)-> tok
tok
cbind(dfamerge,tok$rt,tok$t1)->dfamerge
save(dfamerge,file='./data/dfamerge.Rdata')

load('./data/ydfa.Rdata')
nsites <- dim(dfa)[1]
ncap<-apply(ydfa,1,sum)
ymax<-ncap

data.dfa.zi <- list(y=ydfa,nsites=53,ncap=ncap,cov1=scale(dfamerge$PC1),cov2=scale(dfamerge$PC2),cov3=scale(dfamerge$PC3),
                    cov4=scale(dfamerge$rt),cov5=scale(dfamerge$t1),cov6=scale(as.numeric(dfamerge$c1n)))
                    #cov7=scale(as.numeric(dfamerge$bcns)))

# initial values
inits <- function(){
  list (p0=runif(1),beta0=runif(1,-1,1),N=ymax+1,z=rep(1,53))
}

# parameters to monitor
parameters <- c("N","p0","beta0","beta1","beta2","beta3","beta4","beta5","beta6","omega","b4","b5","fit","fit.new")

# mcmc settings
nthin<-3
nc<-3
nb<-10000
ni<-30000

system.time(dfa.zi1<-jags(data.dfa.zi, inits, parameters, "zi1.jags", n.chains=nc, n.iter=ni, n.burnin=nb, parallel=TRUE))



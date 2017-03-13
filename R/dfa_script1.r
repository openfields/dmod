ni <- 75000

data.dfa.zi <- list(y=ydfa,nsites=53,ncap=ncap,cov1=scale(dfamerge$PC1),cov2=scale(dfamerge$PC2),cov3=scale(dfamerge$PC3),
                    cov4=scale(dfamerge$rt),cov5=scale(dfamerge$t1),cov6=scale(as.numeric(dfamerge$c2n)))

system.time(dfa.zi2<-jags(data.dfa.zi, inits, parameters, "zi1.jags", n.chains=nc, n.iter=ni, n.burnin=nb, parallel=TRUE))
print(dfa.zi2)
# cc3
data.dfa.zi <- list(y=ydfa,nsites=53,ncap=ncap,cov1=scale(dfamerge$PC1),cov2=scale(dfamerge$PC2),cov3=scale(dfamerge$PC3),
                    cov4=scale(dfamerge$rt),cov5=scale(dfamerge$t1),cov6=scale(as.numeric(dfamerge$c3n)))

system.time(dfa.zi3<-jags(data.dfa.zi, inits, parameters, "zi1.jags", n.chains=nc, n.iter=ni, n.burnin=nb, parallel=TRUE))
print(dfa.zi3)
#cc4
data.dfa.zi <- list(y=ydfa,nsites=53,ncap=ncap,cov1=scale(dfamerge$PC1),cov2=scale(dfamerge$PC2),cov3=scale(dfamerge$PC3),
                    cov4=scale(dfamerge$rt),cov5=scale(dfamerge$t1),cov6=scale(as.numeric(dfamerge$c4n)))

system.time(dfa.z4<-jags(data.dfa.zi, inits, parameters, "zi1.jags", n.chains=nc, n.iter=ni, n.burnin=nb, parallel=TRUE))
print(dfa.z4)

#cc5
data.dfa.zi <- list(y=ydfa,nsites=53,ncap=ncap,cov1=scale(dfamerge$PC1),cov2=scale(dfamerge$PC2),cov3=scale(dfamerge$PC3),
                    cov4=scale(dfamerge$rt),cov5=scale(dfamerge$t1),cov6=scale(as.numeric(dfamerge$c5n)))

system.time(dfa.zi5<-jags(data.dfa.zi, inits, parameters, "zi1.jags", n.chains=nc, n.iter=ni, n.burnin=nb, parallel=TRUE))
print(dfa.zi5)

# cc6
data.dfa.zi <- list(y=ydfa,nsites=53,ncap=ncap,cov1=scale(dfamerge$PC1),cov2=scale(dfamerge$PC2),cov3=scale(dfamerge$PC3),
                    cov4=scale(dfamerge$rt),cov5=scale(dfamerge$t1),cov6=scale(as.numeric(dfamerge$c6n)))

system.time(dfa.zi6<-jags(data.dfa.zi, inits, parameters, "zi1.jags", n.chains=nc, n.iter=ni, n.burnin=nb, parallel=TRUE))
print(dfa.zi6)

#cc7
data.dfa.zi <- list(y=ydfa,nsites=53,ncap=ncap,cov1=scale(dfamerge$PC1),cov2=scale(dfamerge$PC2),cov3=scale(dfamerge$PC3),
                    cov4=scale(dfamerge$rt),cov5=scale(dfamerge$t1),cov6=scale(as.numeric(dfamerge$c7n)))

system.time(dfa.zi7<-jags(data.dfa.zi, inits, parameters, "zi1.jags", n.chains=nc, n.iter=ni, n.burnin=nb, parallel=TRUE))
print(dfa.zi7)

# cc8
data.dfa.zi <- list(y=ydfa,nsites=53,ncap=ncap,cov1=scale(dfamerge$PC1),cov2=scale(dfamerge$PC2),cov3=scale(dfamerge$PC3),
                    cov4=scale(dfamerge$rt),cov5=scale(dfamerge$t1),cov6=scale(as.numeric(dfamerge$c8n)))

system.time(dfa.z8<-jags(data.dfa.zi, inits, parameters, "zi1.jags", n.chains=nc, n.iter=ni, n.burnin=nb, parallel=TRUE))
print(dfa.zi8)

# cc9
data.dfa.zi <- list(y=ydfa,nsites=53,ncap=ncap,cov1=scale(dfamerge$PC1),cov2=scale(dfamerge$PC2),cov3=scale(dfamerge$PC3),
                    cov4=scale(dfamerge$rt),cov5=scale(dfamerge$t1),cov6=scale(as.numeric(dfamerge$c9n)))

system.time(dfa.zi9<-jags(data.dfa.zi, inits, parameters, "zi1.jags", n.chains=nc, n.iter=ni, n.burnin=nb, parallel=TRUE))
print(dfa.zi9)

#cc10
data.dfa.zi <- list(y=ydfa,nsites=53,ncap=ncap,cov1=scale(dfamerge$PC1),cov2=scale(dfamerge$PC2),cov3=scale(dfamerge$PC3),
                    cov4=scale(dfamerge$rt),cov5=scale(dfamerge$t1),cov6=scale(as.numeric(dfamerge$c10n)))

system.time(dfa.zi10<-jags(data.dfa.zi, inits, parameters, "zi1.jags", n.chains=nc, n.iter=ni, n.burnin=nb, parallel=TRUE))
print(dfa.zi10)
#bc
data.dfa.zi <- list(y=ydfa,nsites=53,ncap=ncap,cov1=scale(dfamerge$PC1),cov2=scale(dfamerge$PC2),cov3=scale(dfamerge$PC3),
                    cov4=scale(dfamerge$rt),cov5=scale(dfamerge$t1),cov6=scale(as.numeric(dfamerge$bcns)))

system.time(dfa.zibc<-jags(data.dfa.zi, inits, parameters, "zi1.jags", n.chains=nc, n.iter=ni, n.burnin=nb, parallel=TRUE))
print(dfa.zibc)

mean(dfa.zibc$sims.list$fit/dfa.zibc$sims.list$fit.new)

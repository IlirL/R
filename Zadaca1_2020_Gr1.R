X<-rpois(100, 10)
X
#ocenka za EX, lambda=EX so mpo
log.l <- function(lambda = 7){	r=dpois(X,lambda);	-sum(log(r));}
library(stats4);
mle(log.l)

teor<-(10^15*exp(-10))/factorial(15)
teor
funk<-dpois(15,10)
funk


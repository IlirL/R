X<-c(4,2,1,1,4,8,3,1,2,3,8,6,2,2,3);
log.L = function(p=0.5){r = dgeom(X, p); -sum(log(r))};
library(stats4);
mle(log.L);


#X~Geo(p)
X<-c(5,3,2,1,2,7,4,1,3,1,2,4,1,2,4);
log.L = function(p = 0.2){r = dgeom(X, p); -sum(log(r));}
library(stats4);
mle(log.L);


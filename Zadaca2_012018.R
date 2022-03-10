X<-c(6,5,10,7,7,8,6,5,2,2);
log.L = function(lambda = 5){r = dpois(X, lambda); -sum(log(r));}
library(stats4);
mle(log.L);


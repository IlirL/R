#X~Pois(8)
X=rpois(40, lambda = 8);
min(X);max(X);mean(X);quantile(X);IQR(X);range(X);sd(X);var(X);median(X);

#b)
P = 1-ppois(4, lambda=8);
P;
#v)
pred = c(8,12,9,11,15,11,12,13,11,9);
potoa = c(8, 8, 13, 12, 12, 11, 10, 7, 13, 11, 12, 9, 13, 12, 11);
#maksimalen podoben ocenuvac
log.L = function(lambda = 8){r = dpois(potoa, lambda); -sum(log(r));}
library(stats4);
mle(log.L);

#ednakvost na raspredelbi
chisq.test(rbind(pred,potoa));
#pvalue = 0.9414
#pvalue>0.05 => se prifakja H0: raspredelbite se ednakvi

#dali reklamata pridonela za zgolemuvanje na prosecniot broj na klienti vo sendvicarata da bide pogolem od 10) alfa = 0.01
#we need to check if mu  = 10 alternative: mu>10, mal primerok, we use t testing
alpha = 0.1;
t.test(potoa, alt = "greate", mu=10, conf.level=1-alpha);
#pvalue = 0.06916
#pvalue>0.05 => se prifakja H0: mu = 10

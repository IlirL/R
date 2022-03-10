N=30; n=20; p=0.4;
X = rbinom(N,n,p);
X;
min(X);max(X);mean(X);sd(X);var(X);range(X);quantile(X);range(X);IQR(X);median(X);
?qbinom

#Kolku iznesuva k, taka sto so verojatnost 0.5, k gosti naracale desert
P = qbinom(0.5, 20, 0.4);
P;

#v)
pred=c(8,12,7,4,8,8,6,8,9,7,6,12,7,10,7);
potoa=c(13,16,14,8,12,14,16,11,13,10,12,12,14,5,15,9,11,13,8,12,9,15);
log.L = function(p=0.6){n=22; r = dbinom(potoa, n, p); -sum(log(r));}
library(stats4);
mle(log.L);

#since these are discrete random variables we use chi squared testing
chisq.test(rbind(pred, potoa));
#pvalue = 0.9124 > 0.05  => se prifakja H0: raspredelbite se ednakvi

#d)
#check if mu = 10 alternative mu > 10
alpha = 0.02;
#small sample, unknown disperzii, t-testing
?t.test
t.test(potoa, mu=10, alternative = "greater",conf.level = 0.98);

#we get pvalue = 0.002422 < 0.05 => h0 is rejected, meaning that po reklamiranjeto prosecniot broj na gosti e pogolem od 10

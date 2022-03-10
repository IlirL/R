Y <- c(1.13,1.83, 13.14, 41.22, 27.19,  7.13,  6.94, 24.22, 31.77,  1.03,7.80, 26.90,  2.27,  3.21, 19.01,  5.98,  6.57, 9.47,  1.29,  6.99, 28.12, 6.13, 13.91, 21.37, 12.23,  7.29, 13.93, 40.32,  0.17,  7.23,  4.44,  3.59,0.16, 22.27, 7.32,  4.82,  6.04,  3.80,  3.23,  6.04)
n=length(Y)
n

#a) statistiki
min(Y);max(Y);mean(Y);median(Y);sd(Y);var(Y);range(Y);IQR(Y);quantile(Y);sum(Y);
hist(Y)

#b)Y~Exp(lambda)
log.l <- function(lambda=6){r=dexp(Y, lambda); -sum(log(r))}
library(stats4);
mle(log.l)

#lambda=0.087 spored MPO
lambda = 0087

#pravime Kolmogorov smirnov test za r-ba bidejki Y e od ANT
#h0: Y ima eksponeni=cijanlna raspredelba
#ha: Y nema eksponencijalna raspredelba
ks.test(Y,"pexp",lambda)

#h0: mi = 20
#ha: mi != 20
t.test(Y,alt="two.sided", mu=20, conf.level = 0.95)

#pval<0.05; se prifakja ha, proseco vreme na cekanje ne e 20min

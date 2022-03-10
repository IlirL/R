#X-br. na pisma dnevno: X~P(lambda);
#Y-br. na pratki dnevno: Y~P(lambda);
X=c(110,120,104,116,108,20,60,90,100,110,101,180,20,120,170,109,202,230,100,160,180,20,60,90,100,101,110,180,70,120,45)
Y=c(30,70,100,90,80,120,90,110,150,110,20,60,120,130,50,100,70,106,101,90,112,90,80,120,90,100,105,101,40,70,110)
X;
min(X); max(X); mean(X); median(X);sd(X); var(X);quantile(X);IQR(X);range(X);hist(X);
Y;
min(Y); max(Y); mean(Y); median(Y); sd(Y); range(Y); quantile(Y); IQR(Y); var(Y);
hist(Y);

#b)
library(stats4);
#forX
log.L = function(lambda = 50){r = dpois(X, lambda);-sum(log(r))}
mle(log.L);

#forY
log.LY = function(lambda=50){r = dpois(Y, lambda); -sum((log(r)))};
mle(log.LY);


#v)
lambda = 109.8705;#ocenka dobiena so MLE;
EX = labda; #matematicko ocekuvanje kaj Puasonova raspredelba
#P{X<100}=?
P = ppois(100, lambda);
P;

#g)

#test za ednakvost na disperzii
sd(X);sd(Y);
#SX>Sy => se ispityvat slednite hipotezi:
#H0:sigma1 = sigma2;
#Ha:sigma1>sigma2;
var.test(X,Y,alt="greater");
#pvalue < alpha; ja prifakjame Ha:disperzijata na X e pogolema od taa na Y(disperziite se neednakvi)
#Mali primeroci, neednakvi disperzii
#t-test za sporedba na proseci
#H0:m1 = m2;
#Ha:m1!=m2;
t.test(X,Y,alt="two.sided");
#pvalue>alpha => ja prifakjame H0:prosecniot broj na pisma i paketi pristignati vo edne den e ist

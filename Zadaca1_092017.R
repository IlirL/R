X<-rbinom(100, 10, 0.6);
X
min(X);max(X);median(X);mean(X);sd(X);var(X);quantile(X);IQR(X);range(X);
hist(X)
frequency = summary(as.factor(X))["3"]/100;
theoretical = dbinom(3,10,0.6);
theoretical;
theoretical1=ncol(combn(10,3))*(0.6^3)*((1-0.6)^(10-3));
theoretical1;


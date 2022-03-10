X<-rbinom(100, 15, 0.7);
X;
min(X);max(X);median(X);mean(X);range(X);quantile(X);sd(X);var(X);IQR(X);
hist(X);
frequency = summary(as.factor(X))["5"]/100;
theoretical = dbinom(5,15,0.7);
frequency;
theoretical;


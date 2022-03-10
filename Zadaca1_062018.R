X<-rbinom(100, 5, 0.5);
X
min(X); max(X);mean(X);median(X);sd(X);var(X);IQR(X);range(X);quantile(X);
hist(X);
frequency = summary(as.factor(X))["3"]/100;
frequency;
theoretical = dbinom(3,5,0.5);
theoretical;


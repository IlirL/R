X_5 = rnbinom(100, 5, 0.7)+5;
X_5
min(X);max(X);mean(X);median(X);range(X);quantile(X);IQR(X);sd(X);var(X);
hist(X);
frequency = summary(as.factor(X_5))["7"]/100;
frequency;
theoretical = dnbinom(7, 0.7);
theoretical;


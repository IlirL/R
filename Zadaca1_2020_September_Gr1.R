#1 zadaca
# 3, 5, 15 so ver 0.25, 0.4, 0.35
#se razgleduvaat prvite 1000 pristignati avtobusi
#a) da se simulira edna realizacija na eksperimentot
X<-sample(c(3,5,15), 1000, replace = T, prob = c(0.25, 0.4, 0.35))
X
?sample
#b) deskriptivni statistiki i histogram
min(X); max(X); mean(X); median(X); sd(X); var(X); quantile(X);range(X);IQR(X);sum(X);hist(X);

#v)relativ. frek za avtobusot 3-ka
summary(as.factor(X))["3"]
freq <-summary(as.factor(X))["3"]/1000
freq


domasni=c(5,3,4,2,2,1,3,4,3,3,1,4,2,4,2,1);
log.L = function(lambda = 2){r = dpois(domasni, lambda); -sum(log(r));}
library(stats4);
mle(log.L);

#Chi-square test za podobnost na raspredelba chisq(x,p = probabilities);
alpha = 0.05;
lambda = 2.75;#spored MLE
verojatnosti = c();
for(i in 1:16){verojatnosti[i] = dpois(domasni[i], lambda = 2.75);}
chisq.test(domasni, verojatnosti);
#pvalue<0.05, se prifakja Ha: rezultatite od natprevarot na domasniot tim nemaat Puasonova r-ba


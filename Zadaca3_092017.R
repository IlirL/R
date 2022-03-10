#Normalna raspredelba i deka disperziite se ednakvi, small example, I think we need to do t-test;
#comparing disperzii we used f-testing
#comparing whether mu1 = mu2 with the alternative hypothesis that mu1<mu2 i think we used t-testing
A=c(3.40,3.50,3.57,3.74,3.61,4.27,4.20,5.22);
B=c(4.09,5.50,4.08,3.93,4.74,4.36,3.32,4.86);
alpha = 0.05;
t.test(A, B, conf.level = 1-alpha, var.equal = TRUE, alt = "less");
#pvalue>0.05 => ja prifakjame H0: vreminjata do prvoto rasipuvanje kaj dvete kompanii se isti


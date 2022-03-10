frequencies = c(0,1,2,3,4,5,6,7,8,9);
probabilities=c(1010,990,990,960,1020,1000,1000,1030,1020,980)/10000;
chisq.test(frequencies, probabilities);
pvalue > 0.05 => se prifakja H0: primerokot ima ramnomerna raspredelba


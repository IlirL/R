Model1=c(6.25, 4.61, 4.09, 7.24, 6.06, 4.83, 6.28);
Model2=c(7.64, 4.01, 4.68, 4.62, 6.28, 4.84, 5.60);
alpha = 0.05;
#again small example, testing mu
t.test(Model1, Model2, alt = "less",var.equal = TRUE, conf.level = 1-alpha);
#pvalue > 0.05 meaning that H0 se prifakja, vreminjata do prvoto rasipuvanje kaj dvata modela se isti


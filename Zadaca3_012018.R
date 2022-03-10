prva=c(9.3, 10.2, 10.9, 18.9, 17.8, 16, 19.3, 13.9, 16.2, 11.4);
vtora=c(19, 12, 13.5, 12, 14, 10.5, 12.8);
alpha = 0.05;
t.test(prva, vtora, alt = "less", conf.level = 1-alpha, var.equal = TRUE);
#pvalue >0.05, se prifakja H0:prosecniot broj na poeni na testot na studentite od vtorata grupa e ednakva na poeni od studentitte od prvata grupa


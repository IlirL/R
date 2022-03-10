before <- c(121, 125, 130, 145, 160, 180, 145, 184, 178, 169, 178 ,179 ,154,155, 165) 
after <- c(125, 132, 135, 169, 132, 188, 198, 200, 202,145, 154, 178, 141, 122, 131, 128, 118, 145, 185, 158) 
#alpha = 0.05
#imame mal primerok. i nepoznati disperzii, koristime t test
#h0:prosecniot broj na novozarazeni e ist i kaj before i kaj after
#ha: prosecniot broj na novozarazeni na before e pomal od prosecniot broj
#novozarazeni na after [pros. br. na zarazeni e pomal pred orvaranje na granicite]
t.test(before, after, alt = "less", conf.level = 0.95, var.equal = TRUE)
#p value = 0.6575 > 0.05; se prifakja h0;
#prosecniot broj na novozarazeni e is pred i po otvaranje na granicite


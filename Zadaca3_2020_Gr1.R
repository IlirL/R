#X-br na popust
#Y-br na prodadeni vauceri
pod<-matrix(c(7,16,5,8), 2,2, byrow=T)
dimnames(pod) <- list(c("pod 50", "nad 50"), c(">200", "0-199"))
pod
#so hi kvadrat testirame nez na obelezja
#h0: X i Y se nezavisni
#ha: X i Y se zavisni
chisq.test(pod, correct = FALSE)

#pval = 0.6236 > 0.05; se prifkja h0; nezavisni se

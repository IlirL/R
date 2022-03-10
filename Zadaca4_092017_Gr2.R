
.Table <- matrix(c(180,150,60,40), 2, 2, byrow=TRUE)
dimnames(.Table) <- list("rows"=c("Patnicko Vozilo", "Terensko Vozilo"), "columns"=c("Total", "Elf"))
.Table  # Counts
.Test <- chisq.test(.Table, correct=FALSE)
.Test
remove(.Test)
remove(.Table)
#pvalue > 0.05 => se prifakja H0: obelezjata se nezavisni

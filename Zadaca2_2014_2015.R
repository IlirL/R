#se bara Chi-square test za nezavisnost na obelezja
#Rcmdr -> statistics -> Contingency tables -> Enter and anlyze two-way table
#se generira sledniot kod:
.Table <- matrix(c(26,18,12,20), 2, 2, byrow=TRUE)
dimnames(.Table) <- list("rows"=c("So visok pritisok", "Bez visok pritisok"), "columns"=c("Ima Migrena", "Nema migrena"))
.Table  # Counts
.Test <- chisq.test(.Table, correct=FALSE)
.Test
remove(.Test)
remove(.Table)


#pvalue = 0.06308 > 0.05 => se prifakja H0, deka obelezjata se nezavisni

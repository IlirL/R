
library(abind, pos=18)
.Table <- matrix(c(200,240,180,200), 2, 2, byrow=TRUE)
dimnames(.Table) <- list("rows"=c("Pezo", "Citroen"), "columns"=c("Servis A", "Servis B"))
.Table  # Counts
.Test <- chisq.test(.Table, correct=FALSE)
.Test
remove(.Test)
remove(.Table)
#pvalue > 0.05  => ja prifakjame H0: obelezjata se independent

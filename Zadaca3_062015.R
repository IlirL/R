
.Table <- matrix(c(42,10,9,39), 2, 2, byrow=TRUE)
dimnames(.Table) <- list("rows"=c("Maski", "Zenski"), "columns"=c("Kuce", "Mace"))
.Table  # Counts
.Test <- chisq.test(.Table, correct=FALSE)
.Test
remove(.Test)
remove(.Table)
#pvalue<0.05 meaning that we accept the Ha: the observations are not independent


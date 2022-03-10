#X~Exp(lambda)
#Ex = 15, lambda = 1/EX = 1/15
X<-rexp(100, 1/15)
#ocenka za EX
EX<-1/mean(X)
EX
#teoriska ver P(X>=10) = 1-P(X<10) = lambda*exp(-lambda*x)
1-dexp(10, 1/15)


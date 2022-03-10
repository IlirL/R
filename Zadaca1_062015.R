#Da se generiraat 40 vrednosti za X, ako se znae deka eden den vkupno bile ispecateni 30 stranici
ex1 = rbinom(40, 30, 1/2);
ex1;
#da se najde verojatnosta P{X<10}
?pbinom
#x<-0;
#for(i in 0:9){x = x+dbinom(i,1/2);}
#i think pbinom was for >=
#nope pbinom is exactly for <
P = pbinom(10, 30, 1/2);
P;


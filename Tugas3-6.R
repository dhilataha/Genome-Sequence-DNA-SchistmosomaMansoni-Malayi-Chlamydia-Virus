library(seqinr)

pA = 0.28
pC = 0.21
pG = 0.22
pT = 0.29
probability <- c(pA,pC,pG,pT)

#contoh
print(randomSeq(20,probability))
print(randomSeq(20,probability))
print(randomSeq(20,probability))

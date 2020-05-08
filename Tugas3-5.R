library(seqinr)
schistosomaseq <- read.fasta(file = "D:/dhil/Tugas/Bioinformatika/Bioinformatics/Tugas3/schistosoma.fasta")[[1]]

#probabilitas mschitosoma
schistosoma_length = length(schistosomaseq)

pA = table(schistosomaseq)['a']/schistosoma_length
pC = table(schistosomaseq)['c']/schistosoma_length
pG = table(schistosomaseq)['g']/schistosoma_length
pT = table(schistosomaseq)['t']/schistosoma_length
probability = c(pA,pC,pG,pT)

#fungsi
randomSeq = function(n, p){
  sample(c("A", "C", "G", "T"),n,rep=TRUE,prob=p)
}

#sampel
print(randomSeq(10,probability))
print(randomSeq(10,probability))
print(randomSeq(10,probability))


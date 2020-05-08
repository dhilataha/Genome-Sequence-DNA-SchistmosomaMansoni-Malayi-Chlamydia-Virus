library(seqinr)

schistosoma <- read.fasta(file = "D:/dhil/biof/schistosoma.fasta")

schistosomaseq <- schistosoma[[1]]
length = length(schistosomaseq)
cat("Jumlah pasangan basa genom mitokondria Schistosoma mansoni = ",length,"\n")
print(count(schistosomaseq,1))
library(seqinr)

brugia_malayi <- read.fasta(file = "D:/dhil/Tugas/Bioinformatika/Bioinformatics/Tugas3/malayi.fasta")

malayiseq <- brugia_malayi[[1]]

malayi_length = length(malayiseq)
cat("Jumlah pasangan basa genom mitokondria Brugia malayi = ",malayi_length,"\n")
print(count(malayiseq,1))




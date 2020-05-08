library(seqinr)
chlamydia <- read.fasta(file = "D:/dhil/Tugas/Bioinformatika/Bioinformatics/Tugas3/chlamydia.fasta")
chlamydiaseq <- chlamydia[[1]]
table(chlamydiaseq)

table_count4 <- count(chlamydiaseq,4)
table_count4
cat("urutan dari yang terkecil = \n")
sort(table_count4) 

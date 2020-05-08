brugia_malayi <- read.fasta(file = "D:/dhil/Tugas/Bioinformatika/Bioinformatics/Tugas3/malayi.fasta")
malayiseq <- brugia_malayi[[1]]
length(malayiseq)

table(malayiseq)
tablesch <- table(schistosomaseq)
tablesch
table1 <- tablesch/length(schistosomaseq)

frequencyA <- table1[["a"]]
frequencyC <- table1[["c"]]
frequencyG <- table1[["g"]]
frequencyT <- table1[["t"]]
probability <- c(frequencyA,frequencyC,frequencyG,frequencyT)
probability
multinomialprob <- function(temp_sequence, probability)
{
  nucleotides   <- c("A", "C", "G", "T")
  names(probability) <- nucleotides
  temp_sequence    <- toupper(temp_sequence)
  seqlength     <- length(temp_sequence) 
  seqprob       <- numeric()          
  for (i in 1:seqlength)  
  {
    nucleotide <- temp_sequence[i]
    nucleotideprob <- probability[nucleotide]
    if (i == 1) { seqprob <- nucleotideprob[[1]]           }
    else        { seqprob <- seqprob * nucleotideprob[[1]] }
  }
  return(seqprob)
}
multinomialprob(malayiseq, probability)


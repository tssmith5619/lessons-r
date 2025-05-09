if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()
BiocManager::install(c(
  "Biostrings",
  "BiocGenerics",
  "GenomicRanges",
  "IRanges",
  "SummarizedExperiment"
))
library(Biostrings)
library(BiocGenerics)
library(GenomicRanges)
library(IRanges)
library(SummarizedExperiment)
library(Biostrings)

# Create a set of synthetic DNA sequences
sequences <- DNAStringSet(c(
  "ATGCGTACGTAG",
  "TTAACCGGTT",
  "GCTAGCTAGC"
))

# Name the sequences
names(sequences) <- c("Sample_1", "Sample_2", "Sample_3")

# Print it
sequences
library(Biostrings)
sequences <- DNAStringSet(c(
  "ATGCGTACGTAG",
  "TTAACCGGTT",
  "GCTAGCTAGC"
))

names(sequences) <- c("Sample_1", "Sample_2", "Sample_3")
sequences
letterFrequency(sequences, letters = "GC", as.prob = TRUE)
reverseComplement(sequences)
sequences["Sample_2"]

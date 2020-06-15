library(tidyverse)
library(readr)
library(ggplot2)
library(gggenes)
genome_feature <- read_csv("Domains.csv")
P1 <- ggplot(genome_feature, aes(xmin = start, xmax = end, y = molecule, fill = Domain)) + gggenes::geom_gene_arrow(arrowhead_width = unit(0, "mm"),arrowhead_height = unit(3, "mm"))+scale_fill_manual(values=c(c("orange","light blue","red", "yellow","green","white","grey")))
P1<-P1+scale_y_discrete(limits = rev(unique(sort(genome_feature$molecule))))
P1

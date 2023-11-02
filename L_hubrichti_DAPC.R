library(adegenet)
library(ape)
library(poppr)
library(na.tools)
rm(list=ls())

data <- read.genepop(file="L_hubrichti_m5M3n3)R80_maf025_multi.snps.gen")
grp <- find.clusters(data, max.n.clust=8)

#Best fit cluster was 1, so no plotting was done.
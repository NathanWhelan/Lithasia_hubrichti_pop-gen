library(diveRsity)
install.packages("")

data(Test_data)
setwd("~/PleuroceridaePopGen/Lithasia_hubrichti/L_hubrichti_m5M3n3_R80_maf025_multi/")

#READ in GENEPOP FILE. I used from Stacks
##NOTE: If there's only one population, divBasic fails. I don't know why. A "dummy" population with one individual can be created
##NOTE(continued): to create "dummy" population, open the genepop file in a text editor, add a line with "pop" and copy an individual from the original file and paste under "pop". 

test_results<-divBasic("L_hubrichti_m5M3n3_R80_maf025_multi.haps.gen")
##Split out Allelic Richness, make into table.  NOTE: Could modify here (and later with variable name) to split out other statistics
test_results$Allelic_richness
alleicRichenes<-test_results$Allelic_richness
allelicRichness<-as.table(alleicRichenes)

##Data check. Note overall values.
allelicRichness
allelicRichness["overall",]

##seperate by population and remove loci that were not genotyped for that population (i.e., Allelic Richness of 0)
pop1_allelicR<-allelicRichness[,1]
pop1_allelicR<-as.data.frame(pop1_allelicR)
pop1_allelicR_zeroesRemoved<-pop1_allelicR[apply(pop1_allelicR!=0,1,all),]


#Calculate Mean
pop1mean<-mean(pop1_allelicR_zeroesRemoved)



##Calculate Standard Deviation
pop1sd<-sd(pop1_allelicR_zeroesRemoved)


##Calculate standard error
pop1se<-(sqrt(sum((pop1_allelicR_zeroesRemoved - mean(pop1_allelicR_zeroesRemoved)) ^ 2/(length(pop1_allelicR_zeroesRemoved) - 1)))/sqrt(length(pop1_allelicR_zeroesRemoved)))

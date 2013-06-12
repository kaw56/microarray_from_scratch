# clean up and reshape data so that analysis can be performed

## @knitr clean

# normalisation
library(affy)

library(ExiMiR)
createAB(raw_data)

#dat <- expresso(raw_data, 
#                bgcorrect.method = "rma", 
#                pmcorrect.method = "pmonly", 
#                normalize.method = "quantiles", 
#                summary.method   = "medianpolish")


#dat <- backgroundCorrect(raw_data, method = "normexp", offset=16)
#dat$E <- normalizeBetweenArrays(dat$E, method="quantile")
#dat$E <- log2(dat$E)

# average
dat_avg <- avereps(dat, ID=dat$genes$ProbeName)

## @knitr
# exploratory graphs for eyeballing normalisation 
boxplot(log(as.matrix(dat)),las=2,ylab="Log2(Intensity)")
mva.pairs(as.matrix(raw_data)[,c(1:10)])
mva.pairs(as.matrix(dat))

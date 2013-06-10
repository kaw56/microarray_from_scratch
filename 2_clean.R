# clean up and reshape data so that analysis can be performed

## @knitr clean

library(affy)
dat <- backgroundCorrect(raw_data, method = "normexp", offset=16)

dat$E <- normalizeBetweenArrays(dat$E, method="quantile")

## @knitr
# exploratory graphs for eyeballing normalisation 
boxplot(log(as.matrix(dat)),las=2,ylab="Log2(Intensity)")
mva.pairs(as.matrix(raw_data)[,c(1:10)])
mva.pairs(as.matrix(dat))
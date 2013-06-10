# load up data needed for analysis and necessary packages

## @knitr load
library(knitr)
library(limma)

# need to load the raw microarray files and the probes with their blast scores
targets <- readTargets("Data/targets.txt")

raw_data <- read.maimages(targets, source= "agilent", green.only=TRUE)

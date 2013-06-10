# perform analysis here generate graphs and tables and so on

# circadian time
# design matrix
circa <- factor(targets$Time)
circa_design <- model.matrix(~circa)

# contrast matrix
circa_contrast <- makeContrasts("day-night", levels=circa_design)

# make design matrix for tidal time
tidal <- factor(targets$Tide)
tidal_design <- model.matrix(~tidal)


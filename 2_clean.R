# clean up and reshape data so that analysis can be performed

## @knitr clean

bg_correct <- backgroundCorrect(raw_data, method = "normexp")

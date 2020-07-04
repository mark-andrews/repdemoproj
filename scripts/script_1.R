library(here)
library(bayeslmm)

result <- lmm(rt ~ day + (day|subject), data = sleepstudy_df)

saveRDS(result, file=here('tmp/model_1.rds'))
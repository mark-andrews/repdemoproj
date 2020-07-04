library(here)
library(bayeslmm)

result <- lmm(rt ~ day + (1|subject), data = sleepstudy_df)

saveRDS(result, file=here('tmp/model_0.rds'))
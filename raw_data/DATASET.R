## code to prepare `sleepstudy_df` dataset goes here
library(here)
library(tidyverse)

data(sleepstudy, package = 'lme4')

sleepstudy_df <- sleepstudy %>%
  as_tibble() %>%
  select(rt = Reaction,
         day = Days,
         subject = Subject)

data_filename <- str_c(here('bayeslmm/data', quote(subject_df)), '.rds')
saveRDS(subject_df, file = data_filename)
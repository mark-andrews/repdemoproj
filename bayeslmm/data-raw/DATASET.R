## code to prepare `sleepstudy_df` dataset goes here
library(tidyverse)

data(sleepstudy, package = 'lme4')

sleepstudy_df <- sleepstudy %>%
  as_tibble() %>%
  select(rt = Reaction,
         day = Days,
         subject = Subject)

usethis::use_data(sleepstudy_df, overwrite = TRUE)

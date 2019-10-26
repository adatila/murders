library(tidyverse)
murders <- read_csv("data/murders.csv")
murders <- murders %>% mutate(reagion = factor(region), rate = total / population * 10^5)
save(murders, file = "rda/murders.rda")
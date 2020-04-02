# DATA PREPARATION FOR LIKERT SCALE PLOTS

library(here)
library(tidyverse)

file_path <- here::here("content", "code", "survey", "data-raw", "pre-survey.csv")

survey_raw <- read_csv(file_path, col_names = TRUE, trim_ws=TRUE, 
                   col_types = cols(.default = col_character()))

# Change columns names
names(survey_raw) <- names(survey_raw) %>% 
  sub(pattern = "Imagine that you are going to explain the following terms to somebody else. How well do you KNOW them\\? \\[*", replacement = "") %>% 
  sub(pattern = "\\]", replacement = "")


likert_levels <- c("I have never heard of this term",
                   "I have heard this term before, but I have a vague idea of what it is",
                   "I am familiar with the term but it would be difficult to explain it",
                   "I can explain this term in my own words but I do not use it myself",
                   "I can easily define what exactly this term means and I use it myself")

survey_ready <- survey_raw %>%
  select(`Open access`, `Computational essays`, `Digital notebooks`, `Data repositories`,`License`) %>%
  # drop_na() %>%
  mutate(`Open access` = factor(`Open access`, levels = likert_levels),
         `Computational essays` = factor(`Computational essays`, levels = likert_levels),
         `Digital notebooks` = factor(`Computational essays`, levels = likert_levels),
         `Data repositories` = factor(`Data repositories`, levels = likert_levels),
         `License` = factor(`License`, levels = likert_levels)) %>%
  as.data.frame()


file_path <- here::here("content", "code", "survey", "data", "subset-survey.csv")
write_csv(x = survey_ready, file_path)






# PLOT GENERATION

library(here)
library(tidyverse)
library(likert)

likert_levels <- c("I have never heard of this term",
                   "I have heard this term before, but I have a vague idea of what it is",
                   "I am familiar with the term but it would be difficult to explain it",
                   "I can explain this term in my own words but I do not use it myself",
                   "I can easily define what exactly this term means and I use it myself")

file_path <- here::here("content", "code", "survey", "data", "subset-survey.csv")

survey_ready <- read_csv(file_path, col_names = TRUE, 
                         col_types = cols(.default = col_factor(likert_levels))) %>% as.data.frame()

n <- nrow(survey_ready)

results <- likert(survey_ready)

summary(results)

plot(results, centered=TRUE) +
  ggtitle(paste0("How well do you KNOW these terms? (N=", n, ")")) + 
  guides(fill=guide_legend(position="bottom", title=NULL, nrow = 5))


plot_path <- here::here("content", "code", "survey", "figs", "likert.png")
ggsave(filename = plot_path, width = 14, height = 20, units = "cm")

library(here)
library(tidyverse)
library(likert)

file_path <- here::here("content", "code", "survey", "data", "my-survey.csv")
survey_ready <- read_csv(file_path, col_names = TRUE)

results <- likert(survey_ready)

summary(results)

plot(results)

p <- plot(results, centered=TRUE) +
  ggtitle("How well do you KNOW these terms?") + 
  theme(plot.title = element_text(hjust = 0.5)) + 
  guides(fill=guide_legend(position="bottom", title=NULL, nrow = 5))

p
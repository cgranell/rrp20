# code for exploratory analysis 

library(here)
library(tidyverse)
library(gganimate)

file_name <- "covid19-ecdc-tidy.csv"
file_path <- here("content", "code", "covid-19", "data", file_name)
covid19 <- read_csv(file_path, col_names = TRUE, col_types = 
  cols(
    date = col_date(format = "%Y-%m-%d"),
    day = col_double(),
    month = col_double(),
    year = col_double(),
    step = col_double(),
    country = col_character(),
    geoid = col_character(),
    cases = col_double(),
    deaths = col_double(),
    total_cases = col_double(),
    total_deaths = col_double()
  ))
  

head(covid19)

# All countries - (static) scatter plot 
p_all <- ggplot(
  covid19, 
  aes(x = total_cases, y=total_deaths, size=cases, colour = country)) +
  geom_point(show.legend = FALSE, alpha = 0.7) +
  scale_color_viridis_d() +
  scale_size(range = c(1, 10)) +
  scale_x_log10() +
  labs(x = "total cases ", y = "total deaths") + 
  theme_bw()

p_all

# All contries - (animated) scatter plot
p_all <- p_all +
  transition_time(date) +
  ease_aes('linear') +
  labs(title = "Date: {frame_time}") +
  shadow_wake(wake_length = 0.1, alpha = FALSE) +
  shadow_mark(alpha = 0.3, size = 0.5)

animate(p_all, 
        duration = 40, # = days x 0.5 sec/day
        rewind = FALSE)



# Spain - (static) line chart

es <- covid19 %>%
  filter(country=="Spain")

p_es <- ggplot(
  es,
  aes(x=step, y=cases, group = month, color = factor(month))) +
  geom_line() +
  scale_color_viridis_d() +
  labs(x = "number of days", y = "total cases") +
  theme(legend.position = "top") +
  theme_bw()
p_es

# source: https://www.datanovia.com/en/blog/gganimate-how-to-create-plots-with-beautiful-animation-in-r/
p_es + transition_reveal(step)


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
  

## get rid of 31 dic 2019
covid19 <- 
  covid19 %>% 
  filter(year==2020)


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

figs_path = here("content", "code", "covid-19", "figs", "fig01.png")
ggsave(figs_path)


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


figs_path = here("content", "code", "covid-19", "figs", "fig01_animated.gif")
anim_save(figs_path)


# top10 countries, total cases per day
last_date <- max(covid19$date)

topcountries <- 
  covid19 %>%
  filter(date == last_date) %>%
  arrange(desc(total_cases)) %>%
  slice(1:10) %>%
  select(country) %>% 
  unlist()
  
  
p_top <- 
  covid19 %>%
  filter(country %in% topcountries) %>% 
  ggplot(aes(x = total_cases, y=total_deaths, size=cases, colour = country)) +
  geom_point(show.legend = TRUE, alpha = 0.7) +
  scale_color_viridis_d() +
  scale_size(range = c(1, 10)) +
  scale_x_log10() +
  labs(x = "total cases ", y = "total deaths") +
  guides(colour = guide_legend(title = "Top countries", nrow = 10), size = "none") +
  theme_bw()

p_top
figs_path = here("content", "code", "covid-19", "figs", "fig02.png")
ggsave(figs_path)


# top countries - (animated) scatter plot
p_top <- p_top +
  transition_time(date) +
  ease_aes('linear') +
  labs(title = "Date: {frame_time}") +
  shadow_wake(wake_length = 0.1, alpha = FALSE) +
  shadow_mark(alpha = 0.3, size = 0.5)

animate(p_top, 
        duration = 40, # = days x 0.5 sec/day
        rewind = FALSE)


figs_path = here("content", "code", "covid-19", "figs", "fig02_animated.gif")
anim_save(figs_path)


# All countries, total cases per day (barchart)

p_all_barchart <- 
  covid19 %>%
  group_by(step) %>%
  summarise(n = sum(total_cases)) %>%
  ggplot(aes(step, n, fill = n)) +
  geom_col() +
  scale_fill_distiller(palette = "Reds", direction = 1) +
  theme_minimal() +
  labs(title= "total cases per day", x = "days", y = "total cases") +
  theme(
    panel.grid = element_blank(),
    panel.grid.major.y = element_line(color = "white")
  )

p_all_barchart

figs_path = here("content", "code", "covid-19", "figs", "fig03.png")
ggsave(figs_path)

# Spain - (static) line chart

es <- covid19 %>%
  filter(country=="Spain")

p_es <- ggplot(
  es,
  aes(x=step, y=total_cases, group = month, color = factor(month))) +
  geom_line() +
  scale_color_viridis_d() +
  labs(x = "number of days", y = "total cases") +
  theme(legend.position = "top") +
  theme_bw()
p_es

figs_path = here("content", "code", "covid-19", "figs", "fig04.png")
ggsave(figs_path)

p_es + 
  geom_point() + 
  transition_reveal(step)

figs_path = here("content", "code", "covid-19", "figs", "fig04_animated.gif")
anim_save(figs_path)

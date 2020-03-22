# code for preliminary data prepocessing and cleaning. 

library(here)
library(tidyverse)
library(readxl)

file_path <- here("content", "code", "covid-19", "data-raw", "covid19-ecdc.xlsx")

covid19_raw <- read_excel(file_path, na = c("NA",""))

names(covid19_raw) <- stringr::str_to_lower(names(covid19_raw))

covid19_raw <- covid19_raw %>%
  mutate(country = `countries and territories`,
         date = daterep) %>%
  select(-daterep, -`countries and territories`)



covid19_tidy <- covid19_raw %>%
  mutate(date= paste0(year, "-", 
                      str_pad(month, 2, side = "left", pad = "0"), "-", 
                      str_pad(day, 2, side="left", pad="0"))) %>%
  group_by(country) %>%
  arrange(date) %>%
  mutate(total_cases = cumsum(cases),
         total_deaths = cumsum(deaths), 
         step = row_number()) %>%
  select(date, day, month, year, step, country, geoid, cases, deaths, total_cases, total_deaths) %>%
  arrange(country)



file_name <- "covid19-ecdc-tidy.csv"
file_path <- here("content", "code", "covid-19", "data", file_name)
write_csv(covid19_tidy, file_path, col_names = TRUE)

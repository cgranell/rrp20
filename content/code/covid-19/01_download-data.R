# code for download locally input data and put into the data-raw folder 

# European Center for Disease Control and Prevention (ECDC)
# COVID-19 daily data

library(here)
library(tidyverse)

#create the URL where the dataset is stored with automatic updates every day

ecdc_filename <-  paste0("COVID-19-geographic-disbtribution-worldwide-",
                         format(Sys.time(), "%Y-%m-%d"), ".xlsx")

ecdc_url <- paste0("https://www.ecdc.europa.eu/sites/default/files/documents/", ecdc_filename)

ecdc_filepath <- here("content", "code", "covid-19", "data-raw", ecdc_filename)
  
#download the dataset from the website to a local file
download.file(url, destfile = ecdc_filepath)

covid19_data <- read_excel(ecdc_filepath, na = c("NA",""))

table(covid19_data$`Countries and territories`)

covid19_data <-
  covid19_data %>%
  select(date = DateRep, 
         cases = Cases,
         deaths = Deaths,
         country = `Countries and territories`)


file_name <- "covid19-ecdc.csv"
data_path <- here("content", "code", "covid-19", "data", file_name)
write_csv(covid19_data, data_path, append = TRUE)


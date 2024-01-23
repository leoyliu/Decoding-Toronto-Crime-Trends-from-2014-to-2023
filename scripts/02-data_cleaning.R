#### Preamble ####
# Purpose: Cleans the raw plane data
# Author: Yuanyi (Leo) Liu
# Date: 21 January 2024
# Contact: leoy.liu@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("inputs/data/toronto_crime_rates.csv")

# Removing unwanted columns
cleaned_data <- raw_data %>% select(-c(X_id, HOOD_ID, POPULATION_2023, geometry))

# Removing rows with NA values
cleaned_data <- na.omit(cleaned_data)

#### Save data ####
write_csv(
  x = cleaned_data,
  file = "cleaned_toronto_crime_rates.csv"
)

#### Descriptive Summaries ####
str(cleaned_data)
summary(cleaned_data)

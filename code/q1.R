#load in libraries
library(tidyverse)
library(dplyr)
library(readr)
library(ggplot2)
library(stringr)
library(forcats)

#import the data
yearly <- read_csv("yearly_deaths_by_clinic.csv")
monthly <- read_csv("monthly_deaths.csv")

#investigate the 2 datasets
yearly
  #12 observations, 5 variables
monthly
  #98 observations, 4 variables

##############################################################################################

#Q1 -- Add a 'proportion_deaths' column to each df, calculating the proportion of deaths per number of births for each year in "yearly" & month in "monthly".

#YEARLY
yearly <- yearly %>%
  group_by(year) %>%
  #get proportion of # deaths for every birth
  mutate(proportion_deaths = deaths/births) %>%
  ungroup()

#MONTHLY
monthly <- monthly %>%
  group_by(date) %>%
  #get proportion of # deaths for every birth
  mutate(proportion_deaths = deaths/births) %>%
  ungroup()
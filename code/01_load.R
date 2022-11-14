# load packages
library("tidyverse")    # data manipulation
library("here")         # easy directory navigation


# read in votes
house_votes <- read_csv(here("data", "1976-2020-house.csv"))
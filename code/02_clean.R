# read in data
library(here)
source(here("code", "01_load.R"))

# remove non-party candidates (example: write ins)
house_votes <- house_votes %>% 
  dplyr::filter(!is.na(party)) %>% 
  mutate(state_fips = str_pad(state_fips, width = 2, side = "left", pad = "0"),
         district = str_sub(district, -2, -1))
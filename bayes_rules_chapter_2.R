# Load packages
library(bayesrules)
library(tidyverse)
library(janitor)

# Import article data
data(fake_news)

# count type
fake_news %>% 
  tabyl(type) %>% 
  adorn_totals("row")

fake_news %>% 
  count(type) %>% 
  mutate(percent = n/sum(n)) %>% 
  adorn_totals("row") 

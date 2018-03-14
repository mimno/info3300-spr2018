library(tidyverse)

# If the tidyverse package is not present, enter this at the console:
# install.packages("tidyverse")

## We will use the following packages:
# dplyr   http://dplyr.tidyverse.org/
# stringr http://stringr.tidyverse.org/
# ggplot2 http://ggplot2.tidyverse.org/reference/

# Enter this at the console, replacing with the correct path.
# setwd("REPLACE WITH PATH TO/info3300-spr2018/Prompts/031218")

property_crime <- read_tsv("fbi.txt") %>%
  filter(State != "Total") %>%
  mutate(Population = Population / 1000)
  
vandals_lm <- lm(`Destruction/Damage/Vandalism` ~ Population, property_crime)

ggplot(property_crime, aes(x=Population, y=`Destruction/Damage/Vandalism`, label=State))  +
  geom_point() +
  geom_text(hjust = 0, nudge_x = 135) + 
  geom_smooth(method="lm")
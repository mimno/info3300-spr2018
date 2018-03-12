library(tidyverse)

# If the tidyverse package is not present, enter this at the console:
# install.packages("tidyverse")

## We will use the following packages:
# dplyr   http://dplyr.tidyverse.org/
# stringr http://stringr.tidyverse.org/
# ggplot2 http://ggplot2.tidyverse.org/reference/

# Enter this at the console, replacing with the correct path.
# setwd("REPLACE WITH PATH TO/info3300-spr2018/Prompts/031218")

property_crime <- read_tsv("fbi.txt")

ggplot(property_crime, aes())
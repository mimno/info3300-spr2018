library(tidyverse)

# If the tidyverse package is not present, enter this at the console:
# install.packages("tidyverse")

# Enter this at the console, replacing with the correct path.
# setwd("REPLACE WITH PATH TO/info3300-spr2018/Prompts/031218")

monthly_job_change <- read_csv("bls.txt")

jobs_lm <- lm(JobChange ~ Date, monthly_job_change)

ggplot(monthly_job_change, aes(Date, JobChange)) 

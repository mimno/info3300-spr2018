library(tidyverse)

inputs <- 5 * (rnorm(30)) ## uniform from -2.5 to 2.5
slope <- -0.7
noise <- 1.0
outputs <- inputs * slope + rnorm(30, 0, noise)

regression_data <- data_frame(x = inputs, y = outputs)
ggplot(regression_data, aes(x, y)) + geom_point() + geom_smooth(method="lm") + ylim(-2.5, 2.5)
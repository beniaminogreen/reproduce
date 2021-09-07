#!/usr/bin/env Rscript
# Import the tidyverse
library(tidyverse)

# write out the cars dataset to the data/ directory

write_csv(cars, "../data/cars.csv")

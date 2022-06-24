install.packages("tidyverse")
library(tidyverse)
# Packages provide data on airline flights, world development, and baseball
install.packages(c("nycflights13","gapminder","Lahman"))

mpg

# Plotting mpg data frame
# displ = a cars engine size
# hwy = fuel efficiency

# Creates empty graph
ggplot(data = mpg) +
  # Plots the points
  geom_point(mapping = aes(x = displ, y = hwy))

# 3.2.4
# Run ggplot(data = mpg). What do you see?
  ggplot(data = mpg)
# How many rows are in mpg? How many columns?
  # 234 rows, 11 colums
# What does the drv variable describe? Read the help for ?mpg to find out.
 ?mpg # drive train f= front-wheel, r = rear-wheel, 4 = 4wd
# Make a scatterplot of hwy vs cyl.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))
# What happens if you make a scatterplot of class vs drv? Why is the plot not useful?
ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))
# No correlation between class and drv
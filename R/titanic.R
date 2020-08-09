library(tidyverse)
library(tidymodels)
library(skimr)
library(readr)

titanic_data <- read_csv("data/train.csv")
titanic_initial_split <- titanic_data %>%
  initial_split(4/5)
titanic_train <- titanic_initial_split %>%
  training()
titanic_test <- titanic_initial_split %>%
  testing()

#set up file

## ---- packages ----
#run the following lines
pckgs <- c("tidyverse", "rio", "summarytools", "psych")

#install packages
installed_packages <- pckgs %in% rownames(installed.packages())

if (any(installed_packages == FALSE)) {
  install.packages(pckgs[!installed_packages])
}

#load packages
lapply(pckgs, library, character.only=TRUE)

## ---- import data ----

df <- import("data/allbus_2018_gesamt.sav")

## ---- run script ----

source("2.4_prep_data.R")





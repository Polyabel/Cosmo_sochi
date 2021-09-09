Sys.setlocale("LC_ALL","Russian")
library(ggplot2)
library(lubridate)
#install.packages("readxl")
library(readxl)
rm(list=ls())  # Deletes the workspace!

#########################COMPILING meteoA#########################
fldr <- "D:/WCAUCASUS/1-hour data/COSMO7/Поля АМС" # folder

setwd(fldr)

# считываем из рабочей директории имена файлов по маске расширения
f_met <- list.files()
head(f_met)
f_metsplit <- data.frame(strsplit(f_met, split = '_'))



f_met <- data.frame(fname = unlist(list.files(pattern = ".csv")))
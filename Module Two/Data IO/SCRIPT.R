library(rio)

YTS <- import("Youth_Tobacco_Survey_YTS_Data.csv")
onlineYTS <- import("http://jhudatascience.org/intro_to_r/data/Youth_Tobacco_Survey_YTS_Data.csv")
monuments <- import("Monuments.xlsx")


aids <- import("AIDS.DAT")
cancer  <- import("cancer.sas7bdat")

library(readr)
youth <- read_csv("Youth_Tobacco_Survey_YTS_Data.csv")

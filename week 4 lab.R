setwd("C:/Users/moham/OneDrive/Desktop/Sem 5/Data Science/Lab/Lab week 4")

library("tidyverse")
library("dplyr")
library("dlookr")

churn = read.csv("Churn_Test.csv")

describe_Churn = describe(churn)
normalize_churn = normality(churn)
plot_normality(churn)

correlation_churn = correlate(churn)
plot_correlate(churn)

categ <- target_by(churn, Gender)
cat_num <- relate(categ, Internet.Service)
summary(cat_num)
plot(cat_num)

eda_paged_report(churn)


sessionInfo()

options(repos = c(CRAN = "https://mran.revolutionanalytics.com/snapshot/2018-09-14"))

getOption("repos")

#install.packages("dplyr")
library(dplyr)
packageVersion("dplyr")

#install.packages("prettyR")
library(prettyR)
packageVersion("prettyR")

nhanes_extracted <- read.csv("NHANES_extracted.csv")

head(nhanes_extracted)

nhanes_extracted <- nhanes_extracted[-1]

glimpse(nhanes_extracted)

variables <- c('index', 'female', 'male', 'age', 'body_mass_index', 'waist_circumference', 'sugarfree_diet' )

names(nhanes_extracted) <- variables

head(nhanes_extracted)

nhanes_extracted$sugarfree_diet <- factor(nhanes_extracted$sugarfree_diet, levels=c('0','1'), labels=c('No','Yes'))

table(nhanes_extracted$female, nhanes_extracted$male, deparse.level = 2, useNA = 'always')

nhanes_extracted <- nhanes_extracted %>% mutate(sex = ifelse(female == 1, "female", "male")) %>% select(-c('female', 'male'))

nhanes_extracted$sex <- as.factor(nhanes_extracted$sex)

head(nhanes_extracted)

describe(nhanes_extracted[, -1], num.desc = c("mean", "sd", "median", "min", "max", "valid.n"))

gender_distribution <- table(nhanes_extracted$sex)

gender_distribution

gender_proportion<- round(100*gender_distribution/sum(gender_distribution), 1)

gender_proportion

gender_percent <- paste(gender_proportion,"%",sep="")

pie(gender_distribution, labels = gender_percent, main = "Gender distribution", col = c("pink", "blue"))
legend("topright", c("female", "male"), fill = c("pink", "blue"))

nhanes_extracted %>% group_by(sex)%>% summarise(first_quantile_age = quantile(age, probs = 0.25, na.rm = TRUE), median_age = median(age, na.rm = TRUE), third_quantile_age = quantile(age, probs = 0.75, na.rm = TRUE))

boxplot(age~sex, data = nhanes_extracted, main = "Boxplot of age distribution by gender", xlab = "Gender", ylab = "Age in years", col = c("pink", "blue"))

nhanes_extracted %>% group_by(sex)%>% summarise(first_quantile_bmi = quantile(body_mass_index, probs = 0.25, na.rm = TRUE), median_bmi = median(body_mass_index, na.rm = TRUE), third_quantile_bmi = quantile(body_mass_index, probs = 0.75, na.rm = TRUE))

boxplot(body_mass_index~sex, data = nhanes_extracted, main = "Boxplot of BMI distibution by gender", xlab = "Gender", ylab = "BMI in kg/m^2", col = c("pink", "blue"))

nhanes_over_two <- nhanes_extracted  %>% filter(age >=2)

#quick check of the number of observations and variables
dim(nhanes_over_two)

describe(nhanes_over_two[, -1], num.desc = c("mean", "sd", "median", "min", "max", "valid.n"))

nhanes_over_two %>% group_by(sugarfree_diet)%>% summarise(count = n(), mean = mean(waist_circumference, na.rm = TRUE))

nhanes_over_two %>% filter(is.na(nhanes_over_two$waist_circumference))%>% nrow()

wilcox.test(waist_circumference~sugarfree_diet, conf.int=TRUE, data = nhanes_over_two)

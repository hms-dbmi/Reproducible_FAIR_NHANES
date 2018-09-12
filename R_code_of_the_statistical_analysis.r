
sessionInfo()

options(repos = c(CRAN = "https://mran.revolutionanalytics.com/snapshot/2018-09-10"))

getOption("repos")

#install.packages("dplyr")
library(dplyr)
packageVersion("dplyr")

#install.packages("prettyR")
library(prettyR)
packageVersion("prettyR")

#install.packages("knitr")
library(knitr)
packageVersion("knitr")

#install.packages("devtools")
library(devtools)
packageVersion("devtools")

#install.packages("BiocInstaller", repos = "http://www.bioconductor.org/packages/3.5/bioc")
library(BiocInstaller)
packageVersion("BiocInstaller")

if (file.exists(Sys.getenv("TAR")) == FALSE)  {
    Sys.setenv(TAR = "/bin/tar")
}

install_github("hms-dbmi/Rcupcake", force = TRUE)
library(Rcupcake)
packageVersion("Rcupcake")

nhanes <- read.table("NHANES_dataset.txt", sep="", header = TRUE)

head(nhanes)

glimpse(nhanes)

names(nhanes)

variables <- c('patient_id', 'sex', 'sugarfree_diet', 'age', 'waist_circumference', 'body_mass_index')

names(nhanes) <- variables

head(nhanes)

nhanes$sugarfree_diet <- factor(nhanes$sugarfree_diet, levels=c('0','1'), labels=c('No','Yes'))

head(nhanes)

describe(nhanes[, -1], num.desc = c("mean", "sd", "median", "min", "max", "valid.n"))

gender_distribution <- table(nhanes$sex)

gender_distribution

gender_proportion<- round(100*gender_distribution/sum(gender_distribution), 1)

gender_proportion

gender_percent <- paste(gender_proportion,"%",sep="")

pie(gender_distribution, labels = gender_percent, main = "Gender distribution", col = c("pink", "blue"))
legend("topright", c("female", "male"), fill = c("pink", "blue"))

nhanes %>% group_by(sex)%>% summarise(first_quantile_age = quantile(age, probs = 0.25, na.rm = TRUE), median_age = median(age, na.rm = TRUE), third_quantile_age = quantile(age, probs = 0.75, na.rm = TRUE))

boxplot(age~sex, data = nhanes, main = "Boxplot of age distribution by gender", xlab = "Gender", ylab = "Age in years", col = c("pink", "blue"))

nhanes %>% group_by(sex)%>% summarise(first_quantile_bmi = quantile(body_mass_index, probs = 0.25, na.rm = TRUE), median_bmi = median(body_mass_index, na.rm = TRUE), third_quantile_bmi = quantile(body_mass_index, probs = 0.75, na.rm = TRUE))

boxplot(body_mass_index~sex, data = nhanes, main = "Boxplot of BMI distibution by gender", xlab = "Gender", ylab = "BMI in kg/m^2", col = c("pink", "blue"))

nhanes_over_two <- nhanes  %>% filter(age >=2)

#quick check of the number of observations and variables
dim(nhanes_over_two)

describe(nhanes_over_two[, -1], num.desc = c("mean", "sd", "median", "min", "max", "valid.n"))

nhanes_over_two %>% group_by(sugarfree_diet)%>% summarise(count = n(), mean = mean(waist_circumference, na.rm = TRUE))

nhanes_over_two %>% filter(is.na(nhanes_over_two$waist_circumference))%>% nrow()

wilcox.test(waist_circumference~sugarfree_diet, conf.int=TRUE, data = nhanes_over_two)

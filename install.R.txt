install.packages("dplyr")
install.packages("prettyR")
install.packages("knitr")
install.packages("devtools")
install.packages("BiocInstaller", repos = "http://www.bioconductor.org/packages/3.5/bioc")
if (file.exists(Sys.getenv("TAR")) == FALSE)  {Sys.setenv(TAR = "/bin/tar")}
install_github("hms-dbmi/Rcupcake", force = TRUE)


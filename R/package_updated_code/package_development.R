## Getting started with R package development http://r-pkgs.had.co.nz/intro.html

install.packages(c("devtools", "roxygen2", "testthat", "knitr"))

devtools::install_github("jorvlan/raincloudplots")

library(roxygen2)
library(testthat)
library(knitr)
library(usethis)
library(devtools)
library(ggplot2)
library(plyr)
library(dplyr)
library(readr)
library(rmarkdown)
library(Rmisc)
#library(devtools)
library(gghalves)

#install.packages("magrittr")
library(magrittr)

#Check if system is ready to build packages
has_devel()
document()
load_all()
check()
#library(openvis)
#test_check("openvis")


#' @examples
#' \dontrun{
#' # Using an example dataset
#' figure_1x1 <- raincloud_repmes_1x1(
#'                     data_1x1, data_1x1$x, data_1x1$y data_1x1$jit, data_1x1$id,
#'                     gray', 'dodgerblue', 'darkorange', 1.5, 1.5, .3, .5, .3)
#'}                  


test <- raincloud_repmes_1x1(df_test, df_test$x_axis_1x1, df_test$y_axis_1x1, 
                             df_test$jit_1x1, df_test$id_1x1,
                             color_line = 'gray', color_data1 = 'dodgerblue', color_data2 = 'darkorange',
                             size_data1 = 1.5, size_data2 = 1.5, alpha_line = .3,
                             alpha_data1 = .6, alpha_data2 = .6)
test


df_test <- data_repmes_1x1(
  iris$Sepal.Length[1:50],
  iris$Sepal.Length[51:100],
  jit_distance = .09,
  jit_seed = 321)

data_1x1 <- as.data.frame(data_1x1)


install.packages("roxygen2")
install.packages("")
if("roxygen2" %in% (.packages())){
  detach('package:roxygen2', unload=TRUE)}
library("roxygen2")


install.packages("Rcpp", type = "source")
library(Rcpp)

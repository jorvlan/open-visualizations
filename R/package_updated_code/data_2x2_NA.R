#' Repeated measures data structure
#'
#' This function transforms your data array('s) into the data structure that is needed to visualize a 2x2 repeated measure.
#' @name data_2x2
#' @param array_1 <numeric> the array of datapoints to be plotted
#' @param array_2 <numeric> the array of datapoints to be plotted
#' @param array_3 <numeric> the array of datapoints to be plotted
#' @param array_4 <numeric> the array of datapoints to be plotted
#' @param array_5 <numeric> the array of datapoints to be plotted
#' @param array_6 <numeric> the array of datapoints to be plotted
#' @param labels <string> concatenated string of both group labels group 1
#' @param spread_x_ticks <bool> FALSE if 2 x ticks, TRUE if 4 x ticks
#' @param jit_distance <numeric> the amount of distance between jittered datapoints (0 by default)
#' @param jit_seed <numeric> the amount used in set.seed() (321 by default)
#' @return data_2x2
#'
#' @examples
#' \dontrun{
#' # Using an example dataset
#' df_2x2_1.0 <- data_2x2(
#'                       array_1 = iris$Sepal.Length[1:50],
#'                       array_2 = iris$Sepal.Length[51:100],
#'                       array_3 = iris$Sepal.Length[101:150],
#'                       array_4 = iris$Sepal.Length[81:130],
#'                       array_5 = iris$Sepal.Length[21:70],
#'                       array_6 = iris$Sepal.Length[41:90],
#'                       labels = (c('congruent','incongruent')),
#'                       jit_distance = .05,
#'                       jit_seed = 321,
#'                       spread_x_ticks = TRUE)
#'
#'
#'}
#'@export
data_2x2 <- function(array_1, array_2, array_3, array_4, array_5, array_6, labels, jit_distance = 0, jit_seed = 321,
                     spread_x_ticks = TRUE) {
  
  # check arguments
  if (!is.numeric(array_1) & !is.numeric(array_2) & !is.numeric(array_3) & !is.numeric(array_4))
    stop("Input an array of integers as your data")
  
  if (!is.numeric(jit_distance))
    stop("Input an integer value for the amount of jitter")
  
  if(!is.numeric(jit_seed))
    stop("Input an integer value for the set.seed() function")
  
#  if (length(array_1) > length(array_2) & length(array_3) & length(array_4)) {
#    n <- length(array_1)
#  }  else if (length(array_1) == length(array_2) & length(array_3) & length(array_4)) {
#    n <- length(array_1)
#  }  else if (length(array_2) > length(array_1) & length(array_3) & length(array_4)) {
#    n <- length(array_2)
#  }  else if (length(array_3) > length(array_1) & length(array_2) & length(array_4)) {
#    n <- length(array_3)
#  }  else {
#    n <- length(array_4)
#  }
 
  n <- max(length(array_1), length(array_2), length(array_3), length(array_4))
  length(array_1) <- n
  length(array_2) <- n
  length(array_3) <- n
  length(array_4) <- n 
  
  #intra-individual time-points must be of equal group sizes
  if (length(array_1) != length(array_3) | length(array_2) != length(array_4))
    stop("Please make sure you don't have unequal group-sizes between time-points")
    
  
  if (jit_distance > .2)
    stop("The maximum amount of jitter is 0.2, please specify a lower amount.")
  # set seed generator
  set.seed(jit_seed)
  
  ##inter-group sizes can differ
  #if (length(array_1) != length(array_2) & length(array_3) != length(array_4))
  
  if (missing(array_5) & missing(array_6) & spread_x_ticks == FALSE)
    data_2x2 <- data.frame(y_axis = c(array_1, array_2, array_3, array_4),
                           x_axis = rep(c(1,1.01,2,2.01), each=n),
                           id = factor(rep(1:n,2)),
                           group = rep(c(labels[1], labels[2]), each=n))
  
  else if (!missing(array_5) & !missing(array_6) & spread_x_ticks == TRUE)
    data_2x2 <- data.frame(y_axis = c(array_1, array_2, array_3, array_4, array_5, array_6),
                           x_axis = rep(c(1,1.01,2,2.01,3,3.01), each=n),
                           id = factor(rep(1:n,2)),
                           group = rep(c(labels[1], labels[2]), each=n))
  
  else if (missing(array_5) & missing(array_6) & spread_x_ticks == TRUE)
    data_2x2 <- data.frame(y_axis = c(array_1, array_2, array_3, array_4),
                           x_axis = rep(c(1,2,3,4), each=n),
                           id = factor(rep(1:n,2)),
                           group = rep(c(labels[1], labels[2]), each=n))
  

  data_2x2$jit <- jitter(data_2x2$x_axis, amount = jit_distance)
  
  #remove potential NA's
  if (any(is.na(data_2x2)))
  data_2x2 <- na.omit(data_2x2)
  
  # return dataframe
  return(data_2x2)
  
}

### Testing code for version 0.2.0 -> unequal group sizes update

before = iris$Sepal.Length[1:50] #50 numbers
before_2 = iris$Sepal.Length[11:50] #40 numbers
after = iris$Sepal.Length[51:100] #50 numbers
after_2 = iris$Sepal.Length[21:60] #40 numbers

n <- max(length(before), length(before_2), length(after), length(after_2))
length(before) <- n
length(before_2) <- n
length(after) <- n
length(after_2) <- n

#d <- data.frame(y_1 = c(before, after),
#                y_2 = c(before_2, after_2),
#                x_1 = rep(c(1,1.01), each=n),
#                x_2 = rep(c(2,2.01), each=n),
#                id_1 = factor(rep(1:n,2)),
#                id_2 = factor(rep(1:n,2)))

d1 <- data.frame(y = c(before, after, before_2, after_2),
                 x = rep(c(1,1.01,2,2.01), each=n),
                 id = factor(rep(1:n,2)))

d1$xj <- jitter(d1$x, amount = .09) 


## Test for data_2x2 unequal groups

df_2x2 <- data_2x2(
  array_1 = iris$Sepal.Length[1:50], #50 numbers
  array_2 = iris$Sepal.Length[11:50], #40 numbers
  array_3 = iris$Sepal.Length[51:100], #50 numbers
  array_4 = iris$Sepal.Length[21:60], #40 numbers
  labels = (c('congruent','incongruent')),
  jit_distance = .09,
  jit_seed = 321,
  spread_x_ticks = FALSE) 

#removing rows with NA's
#df_2x2_na_rm <- na.omit(df_2x2)

raincloud_2x2 <- raincloud_2x2_repmes(
  data = df_2x2,
  colors = (c('dodgerblue', 'darkorange', 'dodgerblue', 'darkorange')),
  fills = (c('dodgerblue', 'darkorange', 'dodgerblue', 'darkorange')),
  size = 1,
  alpha = .6,
  spread_x_ticks = FALSE) +
  
  scale_x_continuous(breaks=c(1,2), labels=c("Pre", "Post"), limits=c(0, 3)) +
  xlab("Time") + 
  ylab("Score") +
  theme_classic()

raincloud_2x2

## Test for data_1x1 unequal groups

df_1x1 <- data_1x1(
  array_1 = iris$Sepal.Length[1:50], #50 numbers
  array_2 = iris$Sepal.Length[51:90], #40 numbers
  jit_distance = .1,
  jit_seed = 321)

raincloud_1_v <- raincloud_1x1(
  data = df_1x1, 
  colors = (c('dodgerblue','darkorange')), 
  fills = (c('dodgerblue','darkorange')), 
  size = 1, 
  alpha = .6, 
  ort = 'v') +
  
  scale_x_continuous(breaks=c(1,2), labels=c("Group1", "Group2"), limits=c(0, 3)) +
  xlab("Groups") + 
  ylab("Score") +
  theme_classic()

raincloud_1_v



#detach a package
if("raincloudplots" %in% (.packages())){
  detach('package:raincloudplots', unload=TRUE)}

## package

## data_1x1.R, raincloud_1x1.R, & raincloud_1x1_repmes.R
df_1x1 <- data_1x1(
  array_1 = iris$Sepal.Length[1:50],
  array_2 = iris$Sepal.Length[51:100],
  jit_distance = .1,
  jit_seed = 321)


raincloud_1 <- raincloud_1x1(data = df_1x1, colors = (c('dodgerblue','darkorange')), fills = (c('dodgerblue','darkorange')), size = 2, alpha = .2, ort = 'h') +
  scale_x_continuous(breaks=c(1,2), labels=c("Group1", "Group2"), limits=c(0, 3)) +
  xlab("Groups") + 
  ylab("Score") +
  theme_classic()

raincloud_1

raincloud_2 <- raincloud_1x1_repmes(data = df_1x1, colors = (c('dodgerblue','darkorange')), fills = (c('dodgerblue','darkorange')), line_color = 'lightgray', 
                                    line_alpha = .3, size = 2, alpha = .2, align_clouds = FALSE)
raincloud_2


## data_2x2.R & raincloud_2x2_repmes.R
df_2x2_1.0 <- data_2x2(
  array_1 = iris$Sepal.Length[1:50],
  array_2 = iris$Sepal.Length[51:100],
  array_3 = iris$Sepal.Length[101:150],
  array_4 = iris$Sepal.Length[81:130],
  labels = (c('congruent','incongruent')),
  jit_distance = .05,
  jit_seed = 321,
  spread_x_ticks = TRUE) 

df_2x2_2.0 <- data_2x2(
  array_1 = iris$Sepal.Length[1:50],
  array_2 = iris$Sepal.Length[51:100],
  array_3 = iris$Sepal.Length[101:150],
  array_4 = iris$Sepal.Length[81:130],
  labels = (c('congruent','incongruent')),
  jit_distance = .05,
  jit_seed = 321,
  spread_x_ticks = FALSE) 

raincloud_3 <- raincloud_2x2_repmes(data = df_2x2_1.0, spread_x_ticks = TRUE)
raincloud_3

raincloud_4 <- raincloud_2x2_repmes(data = df_2x2_2.0, spread_x_ticks = FALSE)
raincloud_4

## data_2x2 & raincloud_2x3_repmes.R

df_2x3 <- data_2x2(
  array_1 = iris$Sepal.Length[1:50],
  array_2 = iris$Sepal.Length[51:100],
  array_3 = iris$Sepal.Length[101:150],
  array_4 = iris$Sepal.Length[81:130],
  array_5 = iris$Sepal.Length[21:70],
  array_6 = iris$Sepal.Length[41:90],
  labels = (c('congruent','incongruent')),
  jit_distance = .05,
  jit_seed = 321) 

raincloud_5 <- raincloud_2x3_repmes(data = df_2x3, ort = 'v')
raincloud_5

raincloud_6 <- raincloud_2x3_repmes(data = df_2x3, ort = 'h')
raincloud_6




#coord_cartesian(ylim=c(y_lim_min, y_lim_max))

#data_2
df_sw_2x2 <- data_starwars_2x2(
  array_1 = iris$Sepal.Length[1:50],
  array_2 = iris$Sepal.Length[51:100],
  array_3 = iris$Sepal.Length[101:150],
  array_4 = iris$Sepal.Length[81:130],
  array_5 = iris$Sepal.Length[101:150],
  array_6 = iris$Sepal.Length[81:130],
  label_1 = 'Boys',
  label_2 = 'Girls',
  jit_distance = .04,
  jit_seed = 321,
  spread_x_ticks = FALSE)


df_sw_2x2 <- data_starwars_2x2(
  array_1 = iris$Sepal.Length[1:50],
  array_2 = iris$Sepal.Length[51:100],
  array_3 = iris$Sepal.Length[101:150],
  array_4 = iris$Sepal.Length[81:130],
  label_1 = 'Placebo',
  label_2 = 'Drug',
  jit_distance = .04,
  jit_seed = 321,
  spread_x_ticks = FALSE)

df_sw_1x1 <- data_starwars_2x2(
  array_1 = iris$Sepal.Length[1:50],
  array_2 = iris$Sepal.Length[51:100],
  label_1 = 'boys',
  label_2 = 'girls',
  jit_distance = .04,
  jit_seed = 321,
  spread_x_ticks = FALSE)

sw_2x2 <- raincloud_starwars_2x2(df_sw_2x2)
sw_2x2

sw_2x2 +
  scale_x_continuous(breaks=c(1,2), labels=c("1", "2"), limits=c(0, 3)) +
  #scale_y_continuous(limits=c(4,8)) +
  xlab("Time") + ylab("Value") +
  #ggtitle('Example figure: Repeated measures with box- and violin plots') +
  theme_classic()

test2x2 <- raincloud_repmes_2x2(df_sw_2x2)
test2x2

#Define additional settings
test2x2 +
  scale_x_continuous(breaks=c(1,2,3,4), labels=c("1", "2", "3", "4"), limits=c(0, 5)) +
  xlab("Time") + ylab("Value") +
  theme_classic()
ggtitle('Example figure: Repeated measures with box- and violin plots') +
  test2x2 + theme_classic()


test_basic <- raincloud_1x1(df_1x1, ort = 'h') +
  scale_x_continuous(breaks=c(1,2), labels=c("Group1", "Group2"), limits=c(0, 3)) +
  #theme(legend.position = "none") +
  xlab("Groups") + ylab("Value") +
  theme_classic() 
test_basic
#ggtitle('Example figure: Repeated measures with box- and violin plots') 

#theme_classic()


score_mean1 <- df_sw_2x2 %>% dplyr::filter(x_axis_2x2 == "1") %>% summarise(mean = mean(y_axis_2x2))
score_mean2 <- df_sw_2x2 %>% dplyr::filter(x_axis_2x2 == "2") %>% summarise(mean = mean(y_axis_2x2))
score_mean3 <- df_sw_2x2 %>% dplyr::filter(x_axis_2x2 == "3") %>% summarise(mean = mean(y_axis_2x2))
score_mean4 <- df_sw_2x2 %>% dplyr::filter(x_axis_2x2 == "4") %>% summarise(mean = mean(y_axis_2x2))

create_summary_df(df_1x1)
statistics_df_2x2 <- create_summary_df(df_2x2)
statistics_df_2x2_sw <- create_summary_df(df_sw_2x2)


source(R_rainclouds.R)

##Testing geom_flat_violin here


test_basic <- raincloud_basic(df_1x1, flipped = TRUE)
test_basic +
  scale_x_continuous(breaks=c(1,2), labels=c("Group1", "Group2"), limits=c(0, 3)) +
  xlab("Conditions") + ylab("Value") +
  theme_classic()


test <- raincloud_basic_flipped(df_1x1)
test2 <- test + coord_flip()

test2 +
  scale_x_continuous(breaks=c(1,2), labels=c("Group1", "Group2"), limits=c(.5, 3)) +
  xlab("Conditions") + ylab("Value") +
  theme_classic()


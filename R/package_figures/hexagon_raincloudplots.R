install.packages("hexSticker")
library(hexSticker)

install.packages("magick")
library(magick)

df_1x1 <- data_1x1(
  array_1 = iris$Sepal.Length[1:50],
  array_2 = iris$Sepal.Length[51:100],
  jit_distance = .09,
  jit_seed = 321)

raincloud_2 <- raincloud_1x1_repmes(
  data = df_1x1,
  colors = (c('dodgerblue', 'darkorange')),
  fills = (c('dodgerblue', 'darkorange')),
  line_color = 'gray',
  line_alpha = .6,
  size = 1,
  alpha = .6,
  align_clouds = FALSE) +
  
  scale_x_continuous(breaks=c(1,2), labels=c("Pre", "Post"), limits=c(0, 3)) +
  xlab("Time") + 
  ylab("Score") +
  theme_classic()

raincloud_2

raincloud_3 <- raincloud_2 + theme_void() + theme_transparent()

imgurl <- system.file("figures/rainclouds5.png", package="hexSticker")
imgurl <- "https://github.com/jorvlan/open-visualizations/blob/master/R/package_figures/Dia1.png"

s <- sticker(raincloud_3, package="Raincloudplots", p_size=36, s_x=1, s_y=.8, s_width=1.8, s_height = .9, h_fill="#F6FFFF", h_size = 2, h_color="darkorange", p_color = "dodgerblue",
        filename="C:/Users/jorvlan/Documents/rainclouds_highres.png", dpi = 600)
s


library(raincloudplots)
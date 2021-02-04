sticker <- function(subplot, s_x=.8, s_y=.75, s_width=.4, s_height=.5,
                    package, p_x=1, p_y=1.4, p_color="#FFFFFF",
                    p_family="Aller_Rg", p_fontface = "plain", p_size=8,
                    h_size=1.2, h_fill="#1881C2", h_color="#87B13F",
                    spotlight=FALSE, l_x=1, l_y=.5, l_width=3, l_height=3, l_alpha=0.4,
                    url = "",  u_x=1, u_y=0.08, u_color="black",
                    u_family="Aller_Rg", u_size=1.5, u_angle=30,
                    white_around_sticker = FALSE, ...,
                    filename = paste0(package, ".png"), asp=1, dpi = 300) {
  
  
  
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
  
  s <- sticker(raincloud_3, package="Raincloudplots", p_size=34, s_x=1, s_y=.8, s_width=1.8, 
               s_height = .9, h_fill="#F6FFFF", h_size = 2, h_color="darkorange", p_color = "dodgerblue", url = "github.com/jorvlan/raincloudplots", u_size = 6,
               u_color = "dodgerblue", white_around_sticker = TRUE,
               filename="C:/Users/jorvlan/Documents/rainclouds_highres.png", dpi = 600)
  s
  
  
  library(raincloudplots)
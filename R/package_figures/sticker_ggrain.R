install.packages("hexSticker")
library(hexSticker)

install.packages("magick")
library(magick)

remotes::install_github("jorvlan/raincloudplots")
library(raincloudplots)

library(gghalves)

# width and height variables for saved plots
w = 6
h = 4
# Define limits of y-axis
y_lim_min = 4
y_lim_max = 7.5


before = iris$Sepal.Length[1:50]
after = iris$Sepal.Length[51:100]
n <- length(before)
d <- data.frame(y = c(before, after),
                x = rep(c(1,2), each=n),
                id = factor(rep(1:n,2)))

set.seed(321)
d$xj <- jitter(d$x, amount=.09)

f1 <- ggplot(data=d, aes(y=y)) +
  
  #Add geom_() objects
  geom_point(data = d %>% filter(x =="1"), aes(x = xj), color = '#482677FF', size = 3, 
             alpha = .9) +
  
  geom_half_violin(
    data = d %>% filter(x=="1"),aes(x = x, y = y), position = position_nudge(x = 0.15), 
    side = "r", fill = 'lightgray', alpha = .3) +

  #Define additional settings
  theme_void() +
  theme_transparent() +
  coord_flip()

f1


s <- sticker(f1, package="ggrain", p_size=15, s_x=1, s_y=.8, s_width=1.8, 
             s_height = .9, h_fill="#20A387FF", h_size = 2, h_color="#482677FF", p_color = "#FDE725FF", url = "github.com/RainCloudPlots/RainCloudPlots", u_size = 3,
             u_color = "#73D055FF", white_around_sticker = TRUE,
             filename="C:/Users/jorvlan/Documents/ggrain_highres.png", dpi = 600)
s

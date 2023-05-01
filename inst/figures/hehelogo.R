library(hexSticker)
library(magick)
library(showtext)

font_add_google("Gochi Hand", "gochi")
showtext_auto()

fname <- "imgfile.png"

sticker("hehe.jpg",
        h_size = 1.25, h_color = "mediumpurple3", h_fill = "#F1FF71",
        p_x = 1, p_y = 1.5, p_size = 70, p_color = "turquoise",
        p_family = "gochi", package = "hehe",
        url = "htpps://github.com/nachodieez/hehe", u_x = 1.05,
        u_y = 0.1, u_size = 8, u_angle = 30, u_color = "black",
        s_x = 1, s_y = 1, s_width = 1, dpi = 600,
        white_around_sticker = TRUE,
        filename = fname)

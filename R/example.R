#example

p1 <- ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
  geom_point(size = 4) + geom_smooth(method=lm,se=FALSE, aes(group=1), ) +
  scale_color_dectech()

#p1 <- ggpretay(p1, title= "Colour", xaxis = "coloir", yaxis = "vof")

gg_check(p1)

finalise_plot(p1, source_name = "Dectech Research", logo_image_path = "dtech.png")

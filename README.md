# dectechViz

An R package to to make your graphs prettier quickly. This is still a work in progress so bear with me. 

```{r eval=TRUE, echo=T}
ggplot2::ggplot(diamonds, aes(price, cut)) + geom_bar(stat = "identity")

```


```{r eval=TRUE, echo=T}
p =  ggplot(diamonds, aes(price, cut)) + geom_bar(stat = "identity")

ggpretay(p)

```

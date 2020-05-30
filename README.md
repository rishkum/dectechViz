README
================
Rishabh Kumar
30/05/2020

## dectechViz

An R package to to make your graphs prettier quickly. This is still a
work in progress so bear with me.

``` r
library(ggplot2)
p1 <- ggplot(diamonds, aes(price, cut)) + geom_bar(stat = "summary", fun.x = "mean" )
p1
```

![](README_files/figure-gfm/ggplot2%20-1.png)<!-- -->

``` r
remotes::install_github("rishkum/dectechViz")
library(dectechViz)
p2 <- ggplot(diamonds, aes(price, cut)) + geom_bar(stat = "summary" , fill = dectech_cols("dectech green"))
p2
```

![](README_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

Finally you will get

``` r
p2 <- ggpretay(p2)
p2
```

![](README_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

## See the difference\!

![](README_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

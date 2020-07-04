
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `repdemoproj`

<!-- badges: start -->

<!-- badges: end -->

The goal of `repdemoproj` is to demonstrate a reproducible data analysis
project.

## Docker

Run this project in Docker.

    docker pull xmjandrews/verse:20.06.25
    docker run --rm -p 8787:8787 -e PASSWORD=<passwd> -e ROOT=true -v <local drive>:/home/rstudio xmjandrews/verse:20.06.25

The `Dockerfile` for the Docker image is also available
[here](Dockerfile).

## Package

Install the package from the local `bayeslmm` directory like this (where
`upgrade = F` means that it does not ask you to update dependencies):

``` r
devtools::install_local('bayeslmm', upgrade = F)
```

Or install it from GitHub like this:

``` r
devtools::install_github("https://github.com/mark-andrews/repdemoproj.git", 
                         subdir = 'bayeslmm', 
                         upgrade = F)
```

Then, load it and use it like this.

``` r
library(bayeslmm)
lmmplot(sleepstudy_df)
```

![](README_files/figure-gfm/demo-1.png)<!-- -->

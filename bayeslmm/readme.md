---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->

```{r, include = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.path = "man/figures/README-",
  out.width = "100%"
)
```

# bayeslmm

<!-- badges: start -->
<!-- badges: end -->

The goal of bayeslmm package is to provide some functions for doing Bayesian linear mixed effects models.

## Installation

```
devtools::install_github(<URL>, subdir = 'bayeslmm')
```

## Example

This is a basic example which shows you how to solve a common problem:

```{r example}
library(bayeslmm)

M <- lmm(rt ~ days, data)

```

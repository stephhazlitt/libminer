
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->

[![R-CMD-check](https://github.com/stephhazlitt/libminer/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/stephhazlitt/libminer/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of libminer is to explore your locally installed R libraries.
It is a toy package created as a part of a workshop and not meant for
serious use.

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stephhazlitt/libminer")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(libminer)

lib_summary()
#>                                                                                         library
#> 1                          /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library
#> 2 /private/var/folders/8t/3l6vpk9x7nl4kq5w25wb17ww0000gn/T/RtmpohYb0m/temp_libpath102c33498651e
#> 3                                                                  /Users/stephhazlitt/Rlibrary
#>   n_packages
#> 1         29
#> 2          1
#> 3        224

# you can also ask it to calculate package sizes:
lib_summary(sizes = TRUE)
#>                                                                                         library
#> 1                          /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library
#> 2 /private/var/folders/8t/3l6vpk9x7nl4kq5w25wb17ww0000gn/T/RtmpohYb0m/temp_libpath102c33498651e
#> 3                                                                  /Users/stephhazlitt/Rlibrary
#>   n_packages   lib_size
#> 1         29   74731768
#> 2          1      14590
#> 3        224 2103955872
```

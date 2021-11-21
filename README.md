
<!-- README.md is generated from README.Rmd. Please edit that file -->

# maxk

<!-- badges: start -->
<!-- badges: end -->

The goal of maxk is to provide interfaces like getting the k-th largest
element in a vector with two parameters, `nums` and `k` on a 1-index
basis, etc.

## Installation

maxk is not yet on CRAN. But, you can download it from this repository
using the following R command:

``` r
devtools::install_github("stat545ubc-2021/maxk")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(maxk)
kth_largest_element(c(5,4,8,7,1), 2)
#> [1] 7
```

The function finds the second largest element in the vector, which is 7,
and returns it.

This package is special because it also works with an invalid `k`:

``` r
kth_largest_element(c(5,4,8,7,1), -1)
#> Warning in kth_largest_element(c(5, 4, 8, 7, 1), -1): 'k' is smaller than 1,
#> setting k = 1
#> [1] 8
```

Here apparently -1 is not valid, but it is treated as 1. The function
still gets the largest element in the vector, which is 8.

``` r
kth_largest_element(c(5,4,8,7,1), 6)
#> Warning in kth_largest_element(c(5, 4, 8, 7, 1), 6): 'k' is larger than length
#> of nums, 5, setting k = 5
#> [1] 1
```

Similarly, 6 is not valid, but it is treated as 5 (the length of the
vector). The function still gets the fifth largest element in the
vector, which is 1.

For now, the function only supports numeric vector input, character
input or empty input will throw errors.

``` r
kth_largest_element(c('a', 'b', 'c'), 6)
#> Error in kth_largest_element(c("a", "b", "c"), 6): Error: object for 'nums' must be numeric. You have input an object of class: character

kth_largest_element(c(), 5)
#> Error in kth_largest_element(c(), 5): Error: object for 'nums' must be numeric. You have input an object of class: NULL
```

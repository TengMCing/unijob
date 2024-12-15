
<!-- README.md is generated from README.Rmd. Please edit that file -->

# unijob

<!-- badges: start -->
<!-- badges: end -->

The goal of unijob is to …

## Installation

You can install the development version of unijob from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("TengMCing/unijob")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(unijob)
## basic example code
```

``` r
monash() |>
  head()
#> # A tibble: 6 × 10
#>   access_date organization     position close_date url   summary location salary
#>   <date>      <chr>            <chr>    <date>     <glu> <chr>   <chr>    <chr> 
#> 1 2024-12-15  Monash Universi… Senior … 2025-01-05 http… "Work … The Alf… "\r H…
#> 2 2024-12-15  Monash Universi… Program… 2025-01-06 http… "Join … 553 St … "\r H…
#> 3 2024-12-15  Monash Universi… Researc… 2025-01-26 http… "Join … Clayton… "\r L…
#> 4 2024-12-15  Monash Universi… Senior … 2025-01-09 http… "As a … The Alf… "\r L…
#> 5 2024-12-15  Monash Universi… Senior … 2025-01-17 http… "Be pa… Clayton… "\r L…
#> 6 2024-12-15  Monash Universi… Lecture… 2025-01-09 http… "Shape… Monash … "\r L…
#> # ℹ 2 more variables: salary_lower <chr>, salary_upper <chr>
```

``` r
unimelb() |>
  head()
#> # A tibble: 6 × 10
#>   access_date organization     position close_date url   summary location salary
#>   <date>      <chr>            <chr>    <date>     <glu> <chr>   <lgl>    <chr> 
#> 1 2024-12-15  University of M… Researc… 2025-01-12 http… Advanc… NA       "\r $…
#> 2 2024-12-15  University of M… Philant… 2025-01-12 http… Join a… NA       "\r $…
#> 3 2024-12-15  University of M… Student… 2025-01-12 http… Lead r… NA       "\r $…
#> 4 2024-12-15  University of M… Clinica… 2025-01-12 http… Coordi… NA       "\r $…
#> 5 2024-12-15  University of M… Researc… 2025-01-10 http… Drive … NA       "\r $…
#> 6 2024-12-15  University of M… Researc… 2025-01-10 http… Suppor… NA       "\r $…
#> # ℹ 2 more variables: salary_lower <chr>, salary_upper <chr>
```

``` r
unsw() |>
  head()
#> # A tibble: 6 × 8
#>   access_date organization     position close_date url   summary location salary
#>   <date>      <chr>            <chr>    <date>     <glu> <chr>   <chr>    <lgl> 
#> 1 2024-12-15  University of N… Casual … 2025-01-12 http… The UN… Sydney,… NA    
#> 2 2024-12-15  University of N… Museum … 2025-01-08 http… Play a… Sydney,… NA    
#> 3 2024-12-15  University of N… Researc… 2025-01-12 http… UNSW K… Sydney,… NA    
#> 4 2024-12-15  University of N… Researc… 2025-01-31 http… We’re … Canberr… NA    
#> 5 2024-12-15  University of N… Venue O… 2025-01-06 http… The Ve… Sydney,… NA    
#> 6 2024-12-15  University of N… Machine… 2025-01-13 http… Develo… Sydney,… NA
```

``` r
usyd() |>
  head()
#> # A tibble: 6 × 8
#>   access_date organization     position close_date url   summary location salary
#>   <date>      <chr>            <chr>    <lgl>      <chr> <chr>   <chr>    <lgl> 
#> 1 2024-12-15  University of S… Postdoc… NA         http… "Job R… Darling… NA    
#> 2 2024-12-15  University of S… Researc… NA         http… "Job R… Camperd… NA    
#> 3 2024-12-15  University of S… Researc… NA         http… "Job R… Camperd… NA    
#> 4 2024-12-15  University of S… Postdoc… NA         http… "Job R… Camperd… NA    
#> 5 2024-12-15  University of S… Senior … NA         http… "Job R… Newtown  NA    
#> 6 2024-12-15  University of S… Postdoc… NA         http… "Job R… Darling… NA
```

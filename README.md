# parcel

<!-- badges: start -->
<!-- badges: end -->

Interact with [parcel](https://parceljs.org) from R, supports [npm](https://github.com/JohnCoene/npm) and [yarn](https://github.com/JohnCoene/yarn).

## Installation

``` r
# install.packages("remotes")
remotes::install_github("JohnCoene/parcel")
```

## Example

Parcel is much less hands-on than [packer](http://packer.john-coene.com/).

``` r
library(parcel)

# create a package
usethis::create_package("testParcel")
setwd("testParcel")

# use parcel
set_engine("yarn") # defaults to npm
scaffold_parcel()
```
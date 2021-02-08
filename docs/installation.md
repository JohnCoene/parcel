# Installation

Parcel is an R package whcih can thus simply be installed from Github with remotes:

```r
# install.packages("remotes")
remotes::install_github("JohnCoene/parcel")
```

Then one must also install one of the two engines, either npm or yarn. __Make sure you have npm installed.__

## Npm

If you have npm installed then only the npm package is required.

```r
# install.packages("remotes")
remotes::install_github("JohnCoene/npm")
```

## Yarn

If you have npm installed, get the yarn package. 

```r
remotes::install_github("JohnCoene/yarn")
```

Then, install yarn.

```r
yarn::install_yarn()
```

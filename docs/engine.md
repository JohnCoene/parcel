# Engine

Parcel supports both [npm](http://npmjs.org/) and [yarn](https://yarnpkg.com/), this is supported by R packages of the same name:

- [npm](https://github.com/JohnCoene/npm)
- [yarn](https://github.com/JohnCoene/yarn)

The underlying engine (and package) used can be defined with `set_engine`.

```r
set_engine("yarn") 
```

If the engine is not set then every function will default to using npm.

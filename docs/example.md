# Example

A central function to parcel is `scaffold`, it lets you set up an R project to use parcel from the root of its directory.

For instance, create a package.

```r
usethis::create_package('testParcel')
```

```
✔ Creating 'testParcel/'
✔ Setting active project to '/Packages/testParcel'
✔ Creating 'R/'
✔ Writing 'DESCRIPTION'
Package: testParcel
Title: What the Package Does (One Line, Title Case)
Version: 0.0.0.9000
Authors@R (parsed):
    * First Last <first.last@example.com> [aut, cre] (YOUR-ORCID-ID)
Description: What the package does (one paragraph).
License: `use_mit_license()`, `use_gpl3_license()` or friends to
    pick a license
Encoding: UTF-8
LazyData: true
Roxygen: list(markdown = TRUE)
RoxygenNote: 7.1.1
✔ Writing 'NAMESPACE'
✔ Setting active project to '<no active project>'

```

Then scaffold the project.

```r
parcel::scaffold()
```

```
── Scaffolding ─────────────────────────────────────────────
✔ Initialised npm
✔ Installed `parcel-bundler`
ℹ Adding files to '.gitignore'
✔ Setting active project to '/Packages/testParcel'
✔ Adding 'node_modules/' to '.gitignore'
ℹ Adding files to '.Rbuildignore'
✔ Adding '^node_modules$' to '.Rbuildignore'
✔ Adding '^package\\.json$' to '.Rbuildignore'
✔ Adding '^package-lock\\.json$' to '.Rbuildignore'
✔ Parcel project set up
```

One can then write JavaScript in the `srcjs` directory, then run.

```r
parcel::build()
```

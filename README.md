

# Getting started
We will be using data from the flywire whole-brain connectome: https://flywire.ai/about

This analysis relies on the coconatfly R package: https://natverse.org/coconatfly/index.html, which is in the natverse suite of R packages

Resources and links:
- https://natverse.org/coconatfly/articles/getting-started.html

### first install the natverse manager and coconatfly
```
install.packages('natmanager')
natmanager::install(pkgs = 'coconatfly')
```
### then download flywire data
```
fafbseg::download_flywire_release_data()
```


### Check that the packages and datasets are set up
```
library(coconatfly)
dr_coconatfly()
```

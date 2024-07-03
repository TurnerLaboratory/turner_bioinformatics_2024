

# Getting started
We will be using data from the flywire whole-brain connectome: https://flywire.ai/about

This analysis relies on the coconatfly R package: https://natverse.org/coconatfly/index.html, which is in the natverse suite of R packages

Resources and links:
- https://natverse.org/coconatfly/articles/getting-started.html

### first install the natverse manager and coconatfly
```
install.packages('natmanager')
natmanager::install('natverse')
natmanager::install(pkgs = 'coconatfly')
natmanager::install(pkgs = 'fafbseg')
```
### then download flywire data
```
fafbseg::download_flywire_release_data()
```

### Troubleshooting issues:

If cfpartners() gives you an error like:
```
Error in `compute.arrow_dplyr_query()`:
! NotImplemented: Support for codec 'zstd' not built
```

Try installing the arrow package like this:
`install.packages('arrow', repos = 'https://apache.r-universe.dev')`

### Check that the packages and datasets are set up
```
library(coconatfly)
dr_coconatfly()
```

# Research topic
My lab studies visual projection neurons (VPNs). VPNs are parallel pathways that carry information from visual centers of the brain to more central brain regions, where that information is used to guide behavior. There are many types of VPNs in the fruit fly, and we focus on a subset of VPNs called Lobula Columnar (LC) and Lobula Plate Lobula Columnar (LPLC) cells. We are interested in understanding how these pathways are organized, how information across pathways is combined or compared, and how downstream circuits collect information across multiple VPN types. For more about VPNs, see these papers:

- https://elifesciences.org/articles/82587
- https://elifesciences.org/articles/21022

For more info about the flywire connectome dataset, you can see the preprint here:
- https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10327113/pdf/nihpp-2023.06.27.546656v2.pdf

## Analysis questions
1. How do VPNs communicate with one another?
    - What is the pattern of inter-VPN synaptic connections (both homo- and hetero-typic)? Where in the brain do these connections occur? What is the relative strength of VPN-VPN connections compared to inputs/outputs from/to other types of neurons?
    - Are there di-synaptic pathways between VPNs that could mediate lateral inhibition?
2. How are VPN signals integrated by downstream cells?
    - How many downstream cells receive VPN inputs? Do downstream cells receive convergent input from multiple VPN types?
3. Relationship between structure and function
    - Does a VPN's downstream (or upstream) connectivity correlate with its physiological tuning?



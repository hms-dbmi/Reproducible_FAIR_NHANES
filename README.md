# Reproducible_FAIR_NHANES

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1345320.svg)](https://doi.org/10.5281/zenodo.1345320)

[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/hms-dbmi/Reproducible_FAIR_NHANES/master)

## What is the purpose of this repository ?

This GitHub repository serves as an illustration of our way to create a reproducible and F.A.I.R (findable, accessible, interoperable, reusable) statistical analysis and is associated with an article whose reference will be added soon in this section. Both reproducibility and “fairness” concepts are relevant and complementary. They promote a more open, discoverable and credible science. For this reason, they should ideally be strived for by any researchers.

The analysis presented in the Jupyter notebook (ipynb file) is performed on public National Health and Nutrition Examination Survey (NHANES) data collected between 1999 and 2006. The `NHANES_extracted.csv` dataset on which the analysis is performed on, was extracted from the whole NHANES dataset corresponding to this period. This large dataset is archived and can be found on dryad digital repository at http://dx.doi.org/10.5061/dryad.d5h62. Steps leading to the creation of the extracted dataset are displayed in the notebook.

_More information on CDC NHANES [here](https://www.cdc.gov/nchs/nhanes/index.htm)._

## Local system setup

```
R version 3.4.1 (2017-06-30)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Ubuntu 18.04 LTS

Matrix products: default
BLAS: /opt/conda/lib/R/lib/libRblas.so
LAPACK: /opt/conda/lib/R/lib/libRlapack.so

locale:
 [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
 [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
 [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
 [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
 [9] LC_ADDRESS=C               LC_TELEPHONE=C            
[11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

loaded via a namespace (and not attached):
 [1] compiler_3.4.1  magrittr_1.5    IRdisplay_0.4.4 pbdZMQ_0.3-2   
 [5] tools_3.4.1     htmltools_0.3.6 base64enc_0.1-3 crayon_1.3.4   
 [9] Rcpp_0.12.18    uuid_0.1-2      stringi_1.2.4   IRkernel_0.8.12
[13] jsonlite_1.5    stringr_1.3.1   digest_0.6.16   repr_0.15.0    
[17] evaluate_0.10.1
```

## Mybinder

`install.R` and `runtime.txt` files are additionnal files enabling the creation of a Mybinder environement in the cloud with a Jupyter using R. You can then execute the code by clicking this button : [![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/hms-dbmi/Reproducible_FAIR_NHANES/master) and share it via this link https://mybinder.org/v2/gh/hms-dbmi/Reproducible_FAIR_NHANES/master 

(_The loading of the page might take up to ten minutes._ )

If you prefer executing the code locally, you can either use the R script or the ipynb file provided in the repo.

More information about the reproducibility aspects are provided in the article that will be soon associated with this repository.

### Resources on F.A.I.R guidelines

 [The FAIR Guiding Principles for scientific data management and stewardship](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4792175/)

 [FORCE11](https://www.force11.org/fairprinciples) 
 
 [FAIR-TLC](https://zenodo.org/record/203295#.W3HO8rjZAe0) 
 
 [FAIRMetrics](https://github.com/FAIRMetrics/Metrics) 
 
 [DTLS](https://www.dtls.nl/fair-data/fair-principles-explained) 

## License

Apache 2 license

Please cite this repository as:


Norah ANTHONY. (2018, August 14). Reproducible_FAIR_NHANES (Version v1.2). Zenodo. http://doi.org/10.5281/zenodo.1345320

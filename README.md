# Reproducible_FAIR_NHANES

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1345320.svg)](https://doi.org/10.5281/zenodo.1345320)

[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/hms-dbmi/Reproducible_FAIR_NHANES/master)

## What is the purpose of this repository ?

This GitHub repository serves as an illustration of our way to create a reproducible and F.A.I.R (findable, accessible, interoperable, reusable) statistical analysis and is associated with an article whose reference will be added soon in this section. Both reproducibility and “fairness” concepts are relevant and complementary. They promote a more open, discoverable and credible science. For this reason, they should ideally be strived for by any researchers.

The analysis presented in the Jupyter notebook (ipynb file) is performed on public National Health and Nutrition Examination Survey (NHANES) data collected between 1999 and 2006. Data were queried from the following interactive database https://nhanes.hms.harvard.edu/. Also we provide here the data in csv format (NHANES.txt) with the six variables of interest only. 

The whole NHANES dataset from this period and variables description are archived and can be found on dryad digital repository at http://dx.doi.org/10.5061/dryad.d5h62.

_More information on CDC NHANES [here](https://www.cdc.gov/nchs/nhanes/index.htm)._


## Reproducibility

By publishing a repository with an Apache 2 license, you can make use of every element of the repository. The query of data is detailed in the ipynb file.

install.R and runtime.txt files are additionnal files enabling the creation of a Mybinder environement with a Jupyter notebook using R. You can then execute the code by clicking this button : [![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/hms-dbmi/Reproducible_FAIR_NHANES/master) and share it via this link https://mybinder.org/v2/gh/hms-dbmi/Reproducible_FAIR_NHANES/master 


(_The loading of the page might take up to ten minutes. Feel free to click on the "show" button to make sure that the process of building logs is on if it is taking too much time. Note that he loading might even fail from time to time. This might be viewed as an environment's alternative to execute the code and not as a completely reliable way to reproduce a computationnal work_ )

If you want to execute the code in your own R console; you also have the opportunity to directly download the code (R_code_of_the_statistical_analysis.R).

More information about the reproducibility aspects are provided in the article that will be soon associated with this repository.

## F.A.I.R compliance

Having a unique identifier and rich metadata that describe the digital object are the most essential part on how to achieve "fairness". We associated a D.O.I (digital object identifier) to the repository by using [Zenodo](https://zenodo.org/).
To retrieve the rich metadata of this Github repository, you can type its name in the searchbox of Zenodo. 

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

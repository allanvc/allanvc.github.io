---
layout: page
title: software
permalink: /software/
nav: yes
nav_order: 3
---

Below you will find more information about the main software projects I have been working on.

---

## R packages:  

[1] __treeSS__: Tree-Spatial Scan Statistic for Cluster Detection  
Description: `treeSS` detects clusters that combine spatial and hierarchical structure. It extends Kulldorff's circular spatial scan statistic and the tree-based scan statistic by searching for anomalies across geographic regions and hierarchical tree branches simultaneously. The package ships standalone implementations of both methods and assesses statistical significance through Monte Carlo simulation under Poisson or binomial models, with optional OpenMP parallelization. [[CRAN]](https://CRAN.R-project.org/package=treeSS) [[Github]](https://www.github.com/allanvc/treeSS)   
  
  
Examples:  
```r
# scanning for spatial-hierarchical clusters in the built-in London data:
library(treeSS)
data(london_collisions)
data(london_tree)

result <- treespatial_scan(
  london_collisions,
  cases      = cases,
  population = population,
  region_id  = region_id,
  x          = x,
  y          = y,
  node_id    = node_id,
  tree       = london_tree,
  nsim       = 999, seed = 42,
  n_cores    = 4L
)

# extract the top 3 non-overlapping clusters for mapping:
cr <- get_cluster_regions(result, n_clusters = 3, overlap = FALSE)
```
  
---

![](/img/mRpostman.png){: .pkg} <!-- incluida a classe pkg no arquivo theme/hugo-researcher/assets/sass/researcher.css --> 

[2] __mRpostman__: An IMAP Client for R  
Description: `mRpostman` is an easy-to-use IMAP client that provides tools for message searching, selective fetching of message attributes, mailbox management, attachment extraction, and several other IMAP features, paving the way for email data analysis in R.  [[Official website]](https://allanvc.github.io/mRpostman) [[CRAN]](https://CRAN.R-project.org/package=mRpostman) [[Github]](https://www.github.com/allanvc/mRpostman)   
  
  
Examples:  
```r
# how to download attachment files of selected messages:
library(mRpostman)
# configure the IMAP connection:
con <- configure_imap(
  url="imaps://outlook.office365.com",
  username="user@company.com",
  password=rstudioapi::askForPassword()
)
# select folder
con$select_folder(name = "INBOX")
# search by date and fetch messages
con$search_on(date_char = "24-Nov-2020") %>%
  con$fetch_attachments()
```
  
---

![](/img/emstreeR.png){: .pkg} <!-- incluida a classe pkg no arquivo theme/hugo-researcher/assets/sass/researcher.css --> 

[3] __emstreeR__: Tools for Fast Computing and Plotting Euclidean Minimum Spanning Trees  
Description: `emstreeR` is a package for fast and easy computation of Euclidean Minimum Spanning Trees (EMST). It heavily relies on {RcppMLPACK} and {Rcpp}, working as a wrapper for the fast EMST Dual-Tree Boruvka algorithm (March, Ram, Gray, 2010)[^1] implemented in _mlpack_ - the C++ Machine Learning library (Curtin, 2013)[^2]. The package also provides functions and an S3 method for readily plotting Minimum Spanning Trees (MST) using either R {base}, {scatterplot3d} or {ggplot2} style. [[CRAN]](https://CRAN.R-project.org/package=emstreeR) [[Github]](https://www.github.com/allanvc/emstreeR)   
  
  
Examples:  
```r
# finding an EMST in 3D data:
# generating artificial data
n = 99
set.seed(1984)
d1 <- matrix(rnorm(n, mean = -2, sd = .5), n/3, 3) # 3d
d2 <- matrix(rnorm(n, mean = 0, sd = .3), n/3, 3)
d3 <- matrix(rnorm(n, mean = 3, sd = .4), n/3, 3)
d <- rbind(d1,d2,d3) # showing a matrix input
# MST:
library(emstreeR)
out <- ComputeMST(d, verbose = FALSE)
# plot:
plotMST3D(out, xlab = "xaxis", col.pts = "orange", col.segts = "red", main = "a simple MST 3D plot")
```

---

[4] __onlineretail__: Online Retail Dataset  
Description: Transactions occurring for a UK-based and registered, non-store online retail between 01/12/2010 and 09/12/2011. The dataset is included in this package with the donor's permission, Dr. Daqing Chen.[^3] [^4]. [[CRAN]](https://CRAN.R-project.org/package=onlineretail) [[Github]](https://www.github.com/allanvc/onlineretail)   
  
  
Examples:  
```r
# how to load the data:
library(onlineretail)
data(onlineretail)
```

---  


---


## Private R packages:  

[5] __proPNLD__: An R package to forecast the number of students in all Brazilian schools and grades for the PNLD program  
Description: Execute the two-step-forecasting (h=2) on the number of students in each grade in every Brazilian public school, fitting more than 800,000 Holt-Winters Exponential Smoothing time-series models. [[Github]](https://www.github.com/allanvc/proPNLD)   
  
---  


---

## Other software:

[1] __FisFa__:  Fiscaliza Fatura - contract invoice analysis automation (discontinued)
Description: FisFa is a software developed (mostly) in R and Python. Its aim is to automate contract management tasks in Fies - the Brazilian Higher Education Fund. Previously to FisFa, contract invoices from banks used to take more than two weeks to be analyzed by the Fund staff. After FisFa, this time has dropped to roughly 1 minute. The quality of the analysis also has considerably improved. FisFa provides several reports about the invoice and also indicates possible errors in data. Due to monthly errors found by FisFa in the invoices, the Brazilian Government saved more than US$50 million between 2016 and 2018.  
License: FisFa is registered under the Brazilian Patent __BR 51 2016 000212 3__.
Awards: As a recognition for the aforementioned results, the software received two national recognition awards:
  + Standout Project in Contract Management. 4th ANGC Awards - Best Initiatives Of The Year on Contract Management, Sep. 2018.
  + 1st Place, Strengthening Internal Controls in the Public Administration. CGU’s 4th Good Practices Award, Dec. 2016.  
  
![FisFa screenshot](/img/fisfa.jpg){: .regimg} <!-- incluida a classe pkg no arquivo theme/hugo-researcher/assets/sass/researcher.css --> 


[^1]: WB.March, P.Ram, AG.Gray (2010). Fast Euclidian minimum spanning tree: algorithm analysis, and applications. 16th ACM SIGKDD International Conference on Knowledge Discovery and Data mining, July 25-28 2010. Washington, DC, USA, [doi:10.1145/1835804.1835882](https://doi.org/10.1145/1835804.1835882).

[^2]: RR.Curtin _et al._ (2013). Mlpack: A scalable C++ machine learning library. Journal of Machine Learning Research, v. 14, 2013.

[^3]: D.Chen, S.Sain, K.Guo (2012), Data mining for the online retail industry: A case study of RFM model-based customer segmentation using data mining, Journal of Database Marketing and Customer Strategy Management, Vol. 19, No. 3, pp. 197-208, 2012 (Published online before print: 27 August 2012. [doi:10.1057/dbm.2012.17](https://doi.org/10.1057/dbm.2012.17).

[^4]: Dr. Daqing's ResearchGate [page](https://www.researchgate.net/profile/Daqing_Chen)

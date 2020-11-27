
---
title: Software
---

# Software

Below, you find more information about the main software development projects that I have been working on:

---

## R packages:  

{{< figure class="pkg" src="/img/mRpostman.png">}} <!-- incluida a classe pkg no arquivo theme/hugo-researcher/assets/sass/researcher.css --> 

[1] __mRpostman__: an IMAP Client for R  
Description: `mRpostman` is an easy-to-use IMAP client that provides tools for message searching, selective fetching of message attributes, mailbox management, attachment extraction, and several other IMAP features, paving the way for email data analysis in R.  [[Official website]](https://allanvc.github.io/mRpostman) [[CRAN]](https://CRAN.R-project.org/package=mRpostman) [[Github]](https://www.github.com/allanvc/mRpostman)   
  
  
Examples:  
```r
# how to download attachment files of selected messages:
library(mRpostman)
# configure IMAP connection
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

{{< figure class="pkg" src="/img/emstreeR.png">}} <!-- incluida a classe pkg no arquivo theme/hugo-researcher/assets/sass/researcher.css --> 

[2] __emstreeR__: an __R__ Package for Fast Computing and Plotting Euclidean Minimum Spanning Trees  
Description: `emstreeR` is a package for fast and easily computing Euclidean Minimum Spanning Trees (EMST). It heavily relies on {RcppMLPACK} and {Rcpp}, working as a wrapper for the fast EMST Dual-Tree Boruvka algorithm (March, Ram, Gray, 2010)[^1] implemented in _mlpack_ - the C++ Machine Learning library (Curtin, 2013)[^2]. The package also provides functions and an S3 method for readily plotting Minimum Spanning Trees (MST) using either R {base}, {scatterplot3d} or {ggplot2} style. [[CRAN]](https://CRAN.R-project.org/package=emstreeR) [[Github]](https://www.github.com/allanvc/emstreeR)   
  
  
Examples:  
```r
# artificial data for a 3D plot:
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

[3] __onlineretail__: Online Retail Data Set  
Description: Transactions occurring for a UK-based and registered, non-store online retail between 01/12/2010 and 09/12/2011. The dataset is included in the package with permission of the donor, Dr. Daqing Chen[^3] [^4]. [[CRAN]](https://CRAN.R-project.org/package=onlineretail) [[Github]](https://www.github.com/allanvc/onlineretail)   
  
  
Examples:  
```r
# how to load the data:
library(onlineretail)
data(onlineretail)
```

---  


---


## Private R packages:  

[4] __proPNLD__: an __R__ package to forecast the number of students in all Brazilian schools and grades for the PNLD program  
Description: Execute the two-step-forecasting (h=2) on the number of students in each grade in every Brazilian public school, fitting more than 800,000 time-series models. [[Github]](https://www.github.com/allanvc/proPNLD)   
  
---  


---

## Other software:

[1] __FisFa__:  Fiscaliza Fatura - contract invoice analysis automation (discontinued)
Description: FisFa is a software developed in __R__ and a little bit in Python. Its aim is to automate contract management tasks in Fies - the Brazilian Higher Education Fund. Previously to FisFa, contract invoices from banks used to take more than two weeks to be analyzed by the Fund staff. After FisFa, this time has dropped to roughly 1 minute. The quality of the analysis also has considerably improved. FisFa provides several reports about the invoice and also indicates possible errors in data. Due to monthly errors found by FisFa in the invoices, the Brazilian Government saved more than US$50 million between 2016 and 2018.  
Awards: As a recognition for the aforementioned results, the software received two national recognition awards:
  + Standout Project in Contract Management. 4th ANGC Awards - Best Initiatives Of The Year on Contract Management, Sep. 2018.
  + 1st Place, Strengthening Internal Controls in the Public Administration. CGU’s 4th Good Practices Award, Dec. 2016.  
License: FisFa is registered under the Brazilian Patent __BR 51 2016 000212 3__.

{{< figure class="regimg" src="/img/fisfa.jpg" caption="FisFa screenshot">}} <!-- incluida a classe pkg no arquivo theme/hugo-researcher/assets/sass/researcher.css --> 


[^1]: WB.March, P.Ram, AG.Gray (2010). Fast Euclidian minimum spanning tree: algorithm analysis, and applications. 16th ACM SIGKDD International Conference on Knowledge Discovery and Data mining, July 25-28 2010. Washington, DC, USA, DOI: 10.17487/RFC3501.
[^2]: RR.Curtin _et al._ (2013). Mlpack: A scalable C++ machine learning library. Journal of Machine Learning Research, v. 14, 2013.
[^3]: D.Chen, S.Sain, K.Guo (2012), Data mining for the online retail industry: A case study of RFM model-based customer segmentation using data mining, Journal of Database Marketing and Customer Strategy Management, Vol. 19, No. 3, pp. 197-208, 2012 (Published online before print: 27 August 2012. doi: 10.1057/dbm.2012.17).
[^4]: [Dr. Dqing's ResearchGate page](https://www.researchgate.net/profile/Daqing_Chen)
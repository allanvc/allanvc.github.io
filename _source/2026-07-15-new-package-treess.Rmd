---
layout: post
title: '''treeSS'' - Tree-spatial scan statistics in R'
date: '2026-07-15'
author: Allan Quadros
tags:
- treeSS
- spatial statistics
- scan statistics
- cluster detection
categories: R
---

## treeSS - Tree-spatial scan statistics in R

I am happy to share **treeSS**, a new R package now available on CRAN.

It helps you detect a special kind of cluster in your data: spatial clusters, meaning groups of nearby areas where something happens more often than expected. But it does one extra thing. It looks at *where* something happens (space) and *what kind* of thing happens (a category in a tree/hierarchy) at the same time. This is an advance over spatial-only or tree-only algorithms, and it does so without inflating the family-wise error rate.

For example, you can use it to find which specific cause of death, type of crime, accident, or condition is unusually common in a group of nearby areas.

The method, called the tree-spatial scan statistic, comes from our paper:

> Cançado, A. L. F., Oliveira, G. S., Quadros, A. V. C., & Duczmal, L. H. (2025). A tree-spatial scan statistic. *Environmental and Ecological Statistics*, 32(3), 953-978. [https://doi.org/10.1007/s10651-025-00670-w](https://doi.org/10.1007/s10651-025-00670-w){:target="_blank"}

Try it in R:

```r
install.packages("treeSS")
```

A Python version is coming soon to PyPI.

* CRAN version: [https://cran.r-project.org/package=treeSS](https://cran.r-project.org/package=treeSS){:target="_blank"}
* Dev version: [https://github.com/allanvc/treeSS](https://github.com/allanvc/treeSS){:target="_blank"}
* Article: [https://doi.org/10.1007/s10651-025-00670-w](https://doi.org/10.1007/s10651-025-00670-w){:target="_blank"}

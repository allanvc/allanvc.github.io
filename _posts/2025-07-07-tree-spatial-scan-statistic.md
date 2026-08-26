---
layout: post
title: A tree-spatial scan statistic - new paper in Environmental and Ecological Statistics
date: '2025-07-07'
author: Allan Quadros
tags:
- spatial statistics
- scan statistics
- cluster detection
- publication
categories: Statistics
---

## A tree-spatial scan statistic

Our paper "A tree-spatial scan statistic", with André Cançado, Geiziane Oliveira and Luiz Duczmal, was published online this week in *Environmental and Ecological Statistics*.

<center>
<img alt="A tree-spatial scan statistic, Environmental and Ecological Statistics" style="max-width: 100%; width: 420px;" src="{{ site.baseurl }}/assets/img/publication_preview/EECS.jpeg" />
</center>

> Cançado, A. L. F., Oliveira, G. S., Quadros, A. V. C., & Duczmal, L. H. (2025). A tree-spatial scan statistic. *Environmental and Ecological Statistics*, 32(3), 953-978. [https://doi.org/10.1007/s10651-025-00670-w](https://doi.org/10.1007/s10651-025-00670-w){:target="_blank"}

### What the paper is about

Events in surveillance data are usually indexed by two things at once: *where* they happen (a municipality, a neighborhood, an administrative unit) and *what* they are (a position in a classification hierarchy, such as an ICD-10 cause of death or an offence category). The two classic tools for cluster detection each handle one of these dimensions. Kulldorff's circular spatial scan statistic finds regions with excess risk but aggregates over all categories, so it cannot tell which category drives the excess. The tree-based scan statistic finds branches of a classification tree with excess risk but aggregates over the whole study area, so it misses the geographic concentration of a given category.

The tree-spatial scan statistic combines the two. For each circular spatial zone and each branch of a user-supplied tree, it evaluates a log-likelihood ratio under a Poisson or binomial model and reports the (zone, branch) pair that maximizes it. Significance is assessed by Monte Carlo simulation under the null hypothesis of homogeneity. Because the p-value is computed against the null distribution of the maximum over the entire search space, the family-wise error rate is controlled by construction, regardless of how many zones and branches are examined. The joint search also tends to return the specific node that carries the signal, rather than its more aggregated parent, which makes the result directly actionable.

We evaluated the method through simulations with hypothetical scenarios combining spatial and hierarchical structures, with good detection performance, and applied it to infant mortality data for the state of Rio de Janeiro, Brazil, in 2016. The method identified a set of municipalities where one branch of causes of death had significantly more deaths than expected under homogeneity.

The method is implemented in the R package [treeSS]({{ site.baseurl }}/blog/2026/new-package-treess/), now on CRAN.

### Abstract

We propose a tree-spatial scan statistic that combines Kulldorff's circular scan method for detecting spatial clusters and the tree-based scan statistic algorithm for data mining. We feed the tree-based scan algorithm with spatial information of events, which are naturally arranged hierarchically. The tree-based scan statistic then examines all possible branches of the tree to identify the branch where the associated probability of cases is higher than expected under the hypothesis of event homogeneity. The algorithm was evaluated through simulations with hypothetical scenarios considering spatial and hierarchical structures, showing good performance in detecting these structures. The tree-spatial scan method was applied to infant mortality data for the Brazilian state of Rio de Janeiro in 2016. The proposed method identified a set of municipalities in Rio de Janeiro where a branch of diseases had a significantly higher number of deaths than expected under the homogeneity hypothesis.

* Article: [https://doi.org/10.1007/s10651-025-00670-w](https://doi.org/10.1007/s10651-025-00670-w){:target="_blank"}
* R package: [https://cran.r-project.org/package=treeSS](https://cran.r-project.org/package=treeSS){:target="_blank"}
* Full list of publications: [/publications/](/publications/)

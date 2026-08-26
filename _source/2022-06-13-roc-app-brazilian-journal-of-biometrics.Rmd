---
layout: post
title: 'ROC App: an application to understand ROC curves - new paper in the Brazilian Journal of Biometrics'
date: '2022-06-13'
author: Allan Quadros
tags:
- ROC curve
- shiny
- teaching
- publication
categories: R
---

## ROC App: an application to understand ROC curves

Our paper "ROC App: an application to understand ROC curves", with Georges von Borries (University of Brasilia), was published in the *Brazilian Journal of Biometrics*.

<center>
<img alt="ROC App paper in the Brazilian Journal of Biometrics" style="max-width: 100%; width: 420px;" src="{{ site.baseurl }}/assets/img/publication_preview/BJB.png" />
</center>

> von Borries, G. F., & Quadros, A. V. C. (2022). ROC App: an application to understand ROC curves. *Brazilian Journal of Biometrics*, 40(2). [https://doi.org/10.28951/bjb.v40i2.566](https://doi.org/10.28951/bjb.v40i2.566){:target="_blank"}

### What the paper is about

The Receiver Operating Characteristic (ROC) curve is one of those concepts that every student of statistics, data science or medicine meets early on, and that many keep finding confusing: what exactly moves along the curve, how it relates to sensitivity and specificity, and why a threshold that looks good for one population is bad for another.

The ROC App is a Shiny application built to make these ideas concrete. Using a diagnostic test as the motivating scenario, the user controls the parameters of the healthy and diseased populations (their means, variances and the cutoff of the test) and watches, in real time, how the ROC curve and the accuracy rates (sensitivity, specificity, false positive and false negative rates) respond to each change. The paper describes the underlying concepts, the app's functionalities and how it can be used in the classroom.

The app is freely available online and runs in the browser, so it can be used in class without any installation.

### Abstract

We present a software application to help students understand the Receiver Operating Characteristic (ROC) curve and other concepts associated with binary classification models. We use the diagnostic test scenario as a motivation to explain the underlying concepts and the app functionalities. The ROC App enables students to interactively learn why/how the ROC curve closely relates to the accuracy rates, by seeing how these curves and rates respond to modifications on the population's parameters.

* ROC App: [https://gfvonborries.shinyapps.io/roc_app/](https://gfvonborries.shinyapps.io/roc_app/){:target="_blank"}
* Article: [https://doi.org/10.28951/bjb.v40i2.566](https://doi.org/10.28951/bjb.v40i2.566){:target="_blank"}
* Full list of publications: [/publications/](/publications/)

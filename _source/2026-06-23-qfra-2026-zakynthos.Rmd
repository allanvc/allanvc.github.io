---
layout: post
title: QFRA 2026 in Zakynthos - Distribution-Based Algorithms for Pairs Trading
date: '2026-06-23'
author: Allan Quadros
tags:
- pairs trading
- bootstrap
- conference
- QFRA
categories: Conferences
---

## QFRA 2026 - Zakynthos, Greece

Between June 18 and 20, 2026, I attended the **9th Symposium on Quantitative Finance and Risk Analysis (QFRA 2026)**, held at Hotel Palatino, in Zakynthos Town, on the Ionian island of Zakynthos, Greece. The symposium is organized by Monash Business School with the support of RiskLab at Data61/CSIRO, and brings together researchers and practitioners from finance, econometrics, actuarial science and statistics. It was the second leg of the trip that started in Milan with [ECIS 2026]({{ site.baseurl }}/blog/2026/ecis-2026-milan/).

On Thursday, June 18, in Session 2 ("AI, Trading and Asset Pricing"), I presented our paper

> **Distribution-based algorithms for pairs trading: a non-overlapping block bootstrap approach**
> Allan Quadros (University of North Florida), Michael Higgins (Kansas State University) and Brian Silverstein (University of South Carolina)

<div style="display:flex; flex-wrap:wrap; gap:12px; justify-content:center;">
<img alt="Presenting at QFRA 2026" style="max-width:100%; width:48%; min-width:280px;" src="{{ site.baseurl }}/assets/img/posts/2026-06-23-qfra-2026-zakynthos/qfra-talk.jpg" />
<img alt="QFRA 2026 participants" style="max-width:100%; width:48%; min-width:280px;" src="{{ site.baseurl }}/assets/img/posts/2026-06-23-qfra-2026-zakynthos/qfra-group.jpg" />
</div>
<center><em>Left: presenting our paper in Session 2. Right: the traditional QFRA family photo with the symposium participants.</em></center>

### The paper

This work extends the distribution-based framework for pairs trading that we introduced in our [*Quantitative Finance* paper]({{ site.baseurl }}/blog/2026/bayesian-pairs-trading-quantitative-finance/). Instead of a Bayesian hierarchical model, here we obtain the distribution of the hedge ratio through a non-overlapping block bootstrap (in the spirit of Lahiri, 2003), which preserves the serial dependence of the price series while making very few parametric assumptions. The quantiles of the bootstrap distribution are then used as confirmation thresholds for the trading signals generated within the standard cointegration framework, and we evaluate the strategy on U.S. and Brazilian asset pairs.

<div style="display:flex; flex-wrap:wrap; gap:12px; justify-content:center;">
<img alt="Keynote by Gordon Phillips at QFRA 2026" style="max-width:100%; width:48%; min-width:280px;" src="{{ site.baseurl }}/assets/img/posts/2026-06-23-qfra-2026-zakynthos/qfra1.jpg" />
<img alt="Conference dinner at QFRA 2026" style="max-width:100%; width:48%; min-width:280px;" src="{{ site.baseurl }}/assets/img/posts/2026-06-23-qfra-2026-zakynthos/qfra4.jpg" />
</div>
<center><em>Left: the opening keynote by Gordon M. Phillips (Tuck School of Business, Dartmouth) on AI and natural language processing in financial economics. Right: the conference dinner.</em></center>

The keynotes were given by Gordon M. Phillips (Dartmouth) and Alexander Michaelides (Imperial College Business School). QFRA is a small symposium, with a single track and plenty of time for discussion, which makes it one of the best places I know to get detailed feedback on a trading paper.

* Conference website and program: [QFRA 2026 - Monash Business School](https://www.monash.edu/business/events/past-events/econometrics-and-business-statistics/quantitative-finance-and-risk-analysis-symposium-qfra-2026){:target="_blank"}

### About Zakynthos

Zakynthos (Zante, for the Venetians who ruled it for three centuries) is the third largest of the Ionian islands, off the western coast of Greece. Zakynthos Town, where the symposium took place, was almost entirely rebuilt after the 1953 earthquake, and its center is the wide Solomos Square, named after Dionysios Solomos, the poet born on the island who wrote the Greek national anthem.

<center>
<img alt="Solomos Square, Zakynthos Town" style="max-width: 100%; width: 700px;" src="{{ site.baseurl }}/assets/img/posts/2026-06-23-qfra-2026-zakynthos/qfra-zak.jpg" />
<br><em>Solomos Square, in Zakynthos Town.</em>
</center>

The island is famous for the Navagio (Shipwreck) beach, the Blue Caves on the northern tip, and the loggerhead sea turtles that nest in Laganas Bay, which is part of a national marine park. The water is as clear as the pictures suggest. Between sessions there was just enough time for a boat trip along the coast, including the obligatory stop at Navagio, where the rusting hull of the MV Panagiotis has been sitting on the sand since 1980.

<center>
<img alt="Navagio (Shipwreck) beach, Zakynthos" style="max-width: 100%; width: 520px;" src="{{ site.baseurl }}/assets/img/posts/2026-06-23-qfra-2026-zakynthos/zak-navagio.jpg" />
<br><em>Navagio beach, seen from the boat.</em>
</center>

<center>
<img alt="Boats in a cove in Zakynthos" style="max-width: 100%; width: 700px;" src="{{ site.baseurl }}/assets/img/posts/2026-06-23-qfra-2026-zakynthos/zak1.jpg" />
<br><em>A cove on the coast of Zakynthos.</em>
</center>

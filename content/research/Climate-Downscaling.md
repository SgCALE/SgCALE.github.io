---
title: "Climate Downscaling"
date: 2022-11-04T18:02
weight: 1
draft: false
featured: true
---

Hybrid statistical-dynamic downscaling based on multi-model ensembles

## What we are releasing

We are releasing a bias-corrected and downscaled dataset based on 14 Coupled Model Intercomparison Project 6 (CMIP6) global climate models (GCMs) and the European Centre for Medium-Range Weather Forecasts Reanalysis 5 (ERA5) dataset. The dataset is simulated by **ERA5 (3 domains)** and **GCMs (4 domains)** forcing in NSCC HPC as shown in the following figure.

![CMIP6 Downscling](/images/rdomains.png)

## What is Downscaling?

GCMs under CMIP6 have been widely used to investigate climate change impacts and put forward associated adaptation and mitigation strategies. However, the relatively coarse spatial resolutions (usually 100~300km) preclude their direct applications at regional scales, which are exactly where the analysis (e.g., hydrological model simulation) is performed. To bridge this gap, a typical approach is to ‘refine’ the information from GCMs through regional climate downscaling experiments, which can be conducted statistically, dynamically, or a combination thereof.

Statistical downscaling establishes relationships between large-scale climate indicators and small-scale climate variables in the reference (historical) period. Subsequently, these relationships are kept unchanged in the future and used to predict the future variables.

Dynamical downscaling operates based on the physical processes and the associated interactions in the climate systems and thus can produce a full set of regional climate simulations (e.g., temperature and precipitation fields) that are dynamically consistent. However, traditional dynamical downscaling contains significant biases that are transferred from GCMs and may be enhanced during the process of downscaling, thus degrading the downscaled results.

One promising approach to remove these biases is the hybrid statistical-dynamical downscaling method, where GCMs are firstly bias-corrected, and subsequently used as lower and lateral boundary conditions to drive the regional climate models (RCMs).

In this work, we apply a hybrid statistical-dynamical downscaling method, following the approach of [Xu et al. 2021](https://pubmed.ncbi.nlm.nih.gov/34737356/). The bias-corrected dataset is adjusted to resemble ERA5-based mean climate and interannual variance, and with a non-linear trend from the ensemble mean of the 14 CMIP6 models. The dataset spans a historical period of 1979–2014 and future scenarios (SSP585) of 2015–2100, with a temporal scale of six-hour.

## What is New?

Our downscaled dataset contributes in 2 ways:

- Firstly, we provide the open-source and high-resolution (12.5km: Southeast Asia; 2.5km: Southern Malay Peninsula; 500m: Singapore, as shown in the following Figures) datasets, including precipitation, wind, temperature, radiation, etc.

- Secondly, through our experiments, this bias-corrected and downscaled dataset is of exceptional quality compared to that of the existing dynamical scaling work (e.g., CORDEX) in southeast Asia in terms of its ability to reproduce regional climate extremes, spatial patterns, etc.

This dataset will be useful for policy-makers and researchers to establish the necessary pathways for resilient planning in order to mitigate the dire impacts of climate change.

{{< t2preslider >}}

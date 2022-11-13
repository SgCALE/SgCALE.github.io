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

# What's downscaling
GCMs under CMIP6 have been widely used to investigate climate change impacts and put forward associated adaptation and mitigation strategies. However, the relatively coarse spatial resolutions (usually 100~300km) preclude their direct applications in regional scales, where the analysis (e.g., hydrological model simulation) is applied. To bridge this gap, a typical approach is to ‘refine’ the information from GCMs through regional climate downscaling experiments, which can be conducted statistically, dynamically, or a combination thereof. Statistical downscaling establishes relationships between large-scale climate indicators and small-scale climate variables in the reference (historical) period. Subsequently, these relationships are kept unchanged in the future and used to predict the future variables. On the other hand, dynamical downscaling operates based on the physical processes and the associated interactions in the climate systems and thus can produce a full set of regional climate simulations (e.g., temperature and precipitation fields) that are dynamically consistent. However, traditional dynamical downscaling contains significant biases that are transferred from GCMs and may be enhanced during the process of downscaling, thus degrading the downscaled results. One approach to remove these biases is the hybrid statistical-dynamical downscaling, where GCMs are firstly bias-corrected, and subsequently used as lower and lateral boundary conditions to drive the regional climate models (RCMs).

In this work, we apply a hybrid statistical-dynamical downscaling, following the approach of Xu et al. 2021. The bias-corrected dataset is adjusted to resemble ERA5-based mean climate and interannual variance, and with a non-linear trend from the ensemble mean of the 14 CMIP6 models. The dataset spans a historical period of 1979–2014 and future scenarios (SSP585) of 2015–2100, with a temporal scale of six-hour. Efforts are underway to develop future simulations and the available model outputs are listed below.
## Experiments developed and developing

These is our finished, running, and future downscaling simulation tasks

Model Name | Simulation state | Finished period	      | Plan task
--- | --- |-----------------------| ---
*ERA5* | `Finished` | Historical(1981-2020) | **Historical(1981-2020)**
MPI-ESM1-2-LR | Running | SSP585(2081-2100)     | SSP126,245,585
EC-Earth3-Veg | Preparing | No                    | SSP126,245,585
FGOALS-f3-L	 | Preparing |  No                    | SSP126,245,585
CESM2-WACCM | Preparing |   No                   | SSP126,245,585
ACCESS-CM2 | Preparing |    No                  | SSP126,245,585
CanESM5 | Preparing |       No               | SSP126,245,585



{{< t2preslider >}}



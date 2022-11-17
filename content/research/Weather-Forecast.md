---
title: "Weather Forecast"
date: 2022-11-08T18:02
featured: true
draft: false
weight: 4
---
###
Real-time weather forecast based on AI technologies and big data

## Background
Rainfall continues to be one of the most crucial meteorological variables in many facets of our life. With the onset of global warming, the hydrological cycle is expected to escalate, which further increases the intensity and frequency of extreme rainfall events and the risk of flooding. These events have grim socio-economic impacts on ruining communities, infrastructure, agriculture and other human-environment systems. However, urban planners and policy-makers often have to base their decisions using coarse-resolution Global Climate Models (GCMs), which may have trouble capturing local- and small-scale precipitation features and extremes, especially in a small country such as Singapore. Existing high-resolution regional models are also labor-intensive and computationally heavy. Therefore, it is paramount to have accessible high-resolution and spatially coherent precipitation forecasts.

## Deep Learning
In this work, we make use of both the latest Global Ensemble Forecast System version 12 (GEFSv12) reanalysis and WRF forced by ERA5 as ground truths to correct and downscale 6 hourly total precipitation forecasts using 13 GEFSv12 reforecast meteorological fields as input. The spatial resolution of both GEFSv12 reanalysis and reforecast (black grids) is 0.25°, and spatial resolution of WRF (blue/red grids) is 0.0225°. We hypothesized that our multi-task learning framework is able to pick up important spatial features from the WRF dataset, while adjusting the precipitation magnitude based on GEFSv12 reanalysis in order to produce bias-corrected and high-resolution 6 hourly total precipitation forecasts. We exploit and modify the generator model architecture from the Super-Resolution Generative Adversarial Network (SRGAN) for multi-task learning of two specific tasks. The first task is the usual bias correcting and downscaling of 6 hourly total precipitation based on the high-resolution WRF dataset, and the second task is framed as a classification problem to bias correct 6 hourly total precipitation categories based on the GEFSv12 reanalysis. To our best knowledge, this is the first time two separate and distinct ground truths were harnessed to simultaneously correct and downscale total precipitation via a multi-task learning approach. The detailed model architecture is shown as below.


![wetherforcast](/images/research_weatherforcast.png)

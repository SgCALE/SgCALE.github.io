<img
  src='https://github.com/longbiao1993/CMIP6/blob/main/data/figures/group.log.jpg'
  height='150'
/>

# 

## Introduction
Global climate models (GCMs) under Coupled Model Intercomparison Project 6 (CMIP6) 
have been widely used to investigate climate change impacts and put forward associated adaptation 
and mitigation strategies. However, the relatively coarse spatial resolutions (usually 100~300km) 
preclude their direct applications in regional scales, where the impact assessment analysis 
(e.g., hydrological model simulation) is applied. To bridge this gap, a typical approach is to 
‘refine’ the information from GCMs through regional climate downscaling experiments, 
which can be conducted statistically, dynamically, or a combination thereof. 
Statistical downscaling establishes relationships between large-scale climate indicators 
and small-scale climate variables in the reference (historical) period. Subsequently, 
these relationships are kept unchanged in the future and used to predict the future variables. 
On the other hand, dynamical downscaling operates based on the physical processes and 
the associated interactions in the climate systems and thus can produce a full set of 
regional climate simulations (e.g., temperature and precipitation fields) that are 
dynamically consistent. However, traditional dynamical downscaling contains significant biases 
that are transferred from GCMs, through lower and lateral boundary conditions, to RCMs, 
thus degrading the downscaled results. One approach to remove these biases is the 
hybrid statistical-dynamical downscaling, where the bias correction is applied to GCMs, 
followed by regional dynamical downscaling. 

## Hybrid statistical-dynamical downscaling
In this work, we applied a hybrid statistical-dynamical downscaling, 
following the approach of Xu et al., 2021. 
We established a bias-corrected six-hourly global dataset based on 
14 CMIP6 GCMs and the European Centre for Medium-Range Weather Forecasts 
Reanalysis 5 (ERA5) dataset, covering the historical reference period 1979–2014 
and future projections under SSP585 for 2015–2100. The main contribution of 
this dataset is twofold, 1) to the best of our knowledge, we provide the first 
open-source high-resolution (12.5 km for southeast Asia and 500 m for Singapore, 
as shown in Fig. 1) RCMs datasets in southeast Asia; 2) 
this fine-tuned dataset is of better quality than the existing work (e.g., CORDEX) 
in southeast Asia in terms of its ability to reproduce climate extremes, 
spatial patterns, and so on. This dataset will be useful for policy-makers 
and researchers to propose sustainable strategies to reduce climate change 
impacts and understand the regional future climate, hydrology, agriculture, wind power, etc.



[![GitHub][github-badge]][github]
[![Build Status]][actions]
![MIT License][]

[github]: https://github.com/carbonplan/carbonplan.org
[github-badge]: https://badgen.net/badge/-/github?icon=github&label
[build status]: https://github.com/carbonplan/carbonplan.org/actions/workflows/main.yml/badge.svg
[actions]: https://github.com/carbonplan/carbonplan.org/actions/workflows/main.yml
[mit license]: https://badgen.net/badge/license/MIT/blue

## The details of this dataset are given below.
The dataset is simulated by WRF4.3 by ERA5 (3 domains) and GCM 6 hourly (4 domains) forcing in NSCC HPC

<img
  src='https://github.com/longbiao1993/CMIP6/blob/main/data/figures/domains_cmip6.png'
  height='400'
/>

1. All output is daily netcdf files with equal area projection at three domains
   (12.5km: south east Asia; 2.5km: around Singapore; 500m: singapore)
2. Files include names with wrfout_d01_year-mon-day_00:00:00 (first running)
   and wrfout_d01_year-mon-day_03:00:00 (restart running)
3. Every file has 8 timesteps (0,3,6,9,12,15,18,21 ; or 3,6,9,12,15,18,21,0)
4. Due to the restart running,there are one or more files named by the same day.
   7 timesteps in the last *_00:00:00 file are the same with the first *_03:00:00 file
   We can select the first timestep in last *_00:00:00 file by xarray, then select required var and mergetime all the file
   Must mind that precpitation include two vars and those are accumulated from the start
5. We offer a shell code (based on cdo) and a python code (based on xarray) which help the 
   user extract the var  from wrfout and combine the vars to file in each year
   shell code (less than 8 minutes a year) is more quick than python code (over 14 minutes a year)
   for single var (Note: the xarray will output file with less size because this lib can maintain higher compression)
## use the dataset
```shell
import xarray as xr
import salem 
import datetime
#Extract WRF variables from NAS; You must mount the NAS by samba in linux or windows
#you must donload the code to your PC and run this in a local folder 
for yr in range(1981,2020):
  #the dirwrf is mount point dir  
  #mon="%02d" % mn
  print(yr)
  dirwrf='/mnt/y/WRF_3domain_fERA5/d02/'+str(yr)+'/'
  ds=xr.open_mfdataset(dirwrf+'wrfout_d02_*',concat_dim='Time',combine='nested')
  #odir is the local dir for saving out data,'./' means present folder
  odir='./'
  #RAINNC is the var name, you can change this to your requirement;
  #the whole output vars is in wrfout.vars_list.txt
  ds.RAINNC.to_netcdf(odir+'RAINNC.'+str(yr)+'.nc')
  #you can also use salem.deacc to de-accumulate the variables(RAINC RAINNC)
  #df=ds.RAINNC.salem.deacc(as_rate=False)
  #df.to_netcdf(odir+'RAINNC.'+str(yr)+'.nc')
  time = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
  print(time)
```
## license

All the code in this repository is [MIT](https://choosealicense.com/licenses/mit/) licensed, but we request that you please provide attribution if reusing any of our digital content (graphics, logo, copy, etc.).

## about us

SgCALE is a non-profit project that uses data and science for climate action. We aim to improve the scientific understanding of climate changes in Southeast Asia with open data. Find out more at [https://SgCALE.github.io/downscaling](https://SgCALE.github.io/downscaling) or get in touch by [opening an issue](https://SgCALE.github.io/downscaling/issues/new) or [sending us an email](mailto:hexg@u.nus.edu).

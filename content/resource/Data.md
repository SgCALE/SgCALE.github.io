---
title: "Data"
date: 2022-11-04T18:02
weight: 2
draft: false
featured: true
---

Highly-precise climate simulation with multi-scale and resolution.

## Methodology

The dataset is simulated using WRF4.3 by ERA5 (3 domains) and GCM (4 domains) forcing in NSCC HPC, as shown below.

![CMIP6 Downscling](/images/domains_cmip6.png)

1. Output files are in daily netCDF format with equal area projection at three domains (12.5km: Southeast Asia; 2.5km: Southern Malay Peninsula; 500m: Singapore).

2. Variables include temperature, precipitation, wind speed, relative humidity, and solar radiation.

3. Each daily file has eight timesteps (0, 3, 6, 9, 12, 15, 18, 21; or 3, 6, 9, 12, 15, 18, 21, 0).

   - Due to occasional restarts, one or more files may contain names of the same day.
   - Seven timesteps in the last \*_00:00:00 file are the same as the first \*_03:00:00 file.
   - We can merge the first timestep of our target \*_00:00:00 file with the first seven timesteps of the \*_03:00:00 file using [Xarray](https://docs.xarray.dev/en/stable/#).

## Extracting Data

The following Python (v3.8) script can be used to extract variables from the ***wrfout*** files, named according to its respective year. It will take about 14 minutes for each variable, in each year. Using the [Xarray](https://docs.xarray.dev/en/stable/#) library is highly recommended.

```python
import xarray as xr #v2022.3.0 
import salem 
import datetime

# Extract WRF variables from NAS; ensure the NAS is mounted.
# Download the code to your local machine and run in a local directory.
for yr in range(1981,2020):
  print(yr)
  dirwrf='/mnt/y/WRF_3domain_fERA5/d02/'+str(yr)+'/'
  ds=xr.open_mfdataset(dirwrf+'wrfout_d02_*',concat_dim='Time',combine='nested')
  # odir is the local dir for saving out data, './' means present folder
  odir='./'
  # RAINNC is the var name, you can change this to your requirement;
  # the whole output vars is in wrfout.vars_list.txt
  ds.RAINNC.to_netcdf(odir+'RAINNC.'+str(yr)+'.nc')
  # you can also use salem.deacc to de-accumulate the variables(RAINC RAINNC)
  # df=ds.RAINNC.salem.deacc(as_rate=False)
  # df.to_netcdf(odir+'RAINNC.'+str(yr)+'.nc')
  time = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
  print(time)
```

## Experiments

Efforts are underway to develop future simulations and key model outputs are listed here.

{{< tabcmip6 >}}

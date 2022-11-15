---
title: "Data"
date: 2022-11-04T18:02
weight: 1
draft: false
featured: true
---
Multi-scale, high-resolution, and high-fidelity climate simulations

## Domains
The dataset is simulated by WRF4.3 by ERA5 (3 domains) and GCM (4 domains) forcing in NSCC HPC, as shown below.
![CMIP6 Downscling](/images/domains_cmip6.png)

1. All output is daily netcdf files with equal area projection at three domains
   (**12.5km**: Southeast Asia; **2.5km**: Southern Malay Peninsula; **500m**: Singapore)
2. Files include names with ***wrfout_d01_year-mon-day_00:00:00*** (first running)
   and ***wrfout_d01_year-mon-day_03:00:00*** (restart running)
3. Every file has 8 timesteps (0,3,6,9,12,15,18,21 ; or 3,6,9,12,15,18,21,0)
4. Due to the restart running,there are one or more files named by the same day.
   7 timesteps in the last *_00:00:00 file are the same with the first *_03:00:00 file
   We can select the first timestep in last *_00:00:00 file by xarray, then select required var and mergetime all the file
   Must mind that precpitation include two vars and those are accumulated from the start

## Scripts

The following python (V-3.8) scripts are used to extract the *var* from ***wrfout*** and output to file named by each year.
It will take about 14 minutes for single var and the xarray will can maintain same compression  level with orgin wrfout files


```shell
import xarray as xr #V-2022.3.0 
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


## Experiments 
Efforts are underway to develop future simulations and the available model outputs are listed here.
###
{{< tabcmip6 >}}

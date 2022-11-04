---
title: "CMIP6 Downscaling"
date: 2022-11-04T18:02
weight: 1
---

The dataset is simulated by WRF4.3 by **ERA5 (3 domains) and GCM 6 hourly (4 domains)**  forcing in NSCC HPC.

![CMIP6 Downscling](/images/domains_cmip6.png)

# Climate Models

Global climate models (GCMs) under Coupled Model Intercomparison Project 6 (CMIP6) have been widely used to investigate climate change impacts and put forward associated adaptation and mitigation strategies. However, the relatively coarse spatial resolutions (usually 100~300km) preclude their direct applications in regional scales, where the analysis (e.g., hydrological model simulation) is applied. To bridge this gap, a typical approach is to ‘refine’ the information from GCMs through regional climate downscaling experiments, which can be conducted statistically, dynamically, or a combination thereof. Statistical downscaling establishes relationships between large-scale climate indicators and small-scale climate variables in the reference (historical) period. Subsequently, these relationships are kept unchanged in the future and used to predict the future variables. On the other hand, dynamical downscaling operates based on the physical processes and the associated interactions in the climate systems and thus can produce a full set of regional climate simulations (e.g., temperature and precipitation fields) that are dynamically consistent. However, traditional dynamical downscaling contains significant biases that are transferred from GCMs and may be enhanced during the process of downscaling, thus degrading the downscaled results. One approach to remove these biases is the hybrid statistical-dynamical downscaling, where GCMs are firstly bias corrected, and subsequently used as lower and lateral boundary conditions to drive the regional climate models (RCMs).

## Hybrid statistical-dynamical downscaling

In this work, we apply a hybrid statistical-dynamical downscaling, following the approach of Xu et al., 2021. We establish a bias-corrected and downscaled dataset based on 14 CMIP6 GCMs and the European Centre for Medium -Range Weather Forecasts Reanalysis 5 (ERA5) dataset. The bias-corrected dataset is adjusted to resemble ERA5-based mean climate and interannual variance, and with a non-linear trend from the ensemble mean of the 14 CMIP6 models. The dataset spans a historical period of 1979–2014 and future scenarios (SSP585) of 2015–2100, with a temporal scale of six-hour. The main contributions of this dataset are twofold, 1) we provide the open- source and high-resolution (12.5km: southeast Asia; 2.5km: around Singapore; 500m: Singapore, as shown in Fig. datasets, including precipitation, wind, temperature, radiation, etc; 2) this bias-corrected and downscaled dataset is of better quality than the existing dynamical work (e.g., CORDEX) in southeast Asia in terms of its ability to reproduce regional climate extremes, spatial patterns, etc. This dataset will be useful for policy-makers and researchers to make the pathways for resilient planning to reduce climate change impacts.

## Precipitation Results

Faithful representation means that the actual effects of the transactions shall be properly accounted for and reported in the financial statements. The words and numbers must match what really happened in the transaction. The ingredients of faithful representation are completeness, neutrality and free from error.

## Enhancing Qualitative Characteristics

### Temperature Results

Verifiability implies consensus between the different knowledgeable and independent users of financial information. Such information must be supported by sufficient evidence to follow the principle of objectivity.

### Comparability

Comparability is the uniform application of accounting methods across entities in the same industry. The principle of consistency is under comparability. Consistency is the uniform application of accounting across points in time within an entity.

### Understandability

Understandability means that accounting reports should be expressed as clearly as possible and should be understood by those to whom the information is relevant.
Timeliness: Timeliness implies that financial information must be presented to the users before a decision is to be made.

---

## Statement of cash flows

The statement of cash flows considers the inputs and outputs in concrete cash within a stated period. The general template of a cash flow statement is as follows: Cash Inflow - Cash Outflow + Opening Balance = Closing Balance

| Cash Inflow | Outflow   | Opening Balance |
| ----------- | --------- | --------------- |
| _Monday_    | `Tuesday` | **Wednesday**   |
| 1           | 2         | 3               |

**Example 1:** in the beginning of September, Ellen started out with $5 in her bank account. During that same month, Ellen borrowed $20 from Tom. At the end of the month, Ellen bought a pair of shoes for $7. Ellen's cash flow statement for the month of September looks like this:

- Cash inflow: $20
- Cash outflow:$7
- Opening balance: $5
- Closing balance: $20 – $7 + $5 = $18

**Example 2:** in the beginning of June, WikiTables, a company that buys and resells tables, sold 2 tables. They'd originally bought the tables for $25 each, and sold them at a price of $50 per table. The first table was paid out in cash however the second one was bought in credit terms. WikiTables' cash flow statement for the month of June looks like this:

> **Important:** the cash flow statement only considers the exchange of actual cash, and ignores what the person in question owes or is owed.

## Statement of financial position (balance sheet)

The balance sheet is the financial statement showing a firm's assets, liabilities and equity (capital) at a set point in time, usually the end of the fiscal year reported on the accompanying income statement.

- **fixed assets**
  - property
  - building
  - equipment (such as factory machinery)
- **intangible assets**
  - copyrights
  - trademarks
  - patents
    - pending
    - international
- goodwill

Owner's equity, sometimes referred to as net assets, is represented differently depending on the type of business ownership. Business ownership can be in the form of a sole proprietorship, partnership, or a corporation. For a corporation, the owner's equity portion usually shows common stock, and retained earnings (earnings kept in the company). Retained earnings come from the retained earnings statement, prepared prior to the balance sheet.

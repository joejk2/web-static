---
layout: post
title: Scoring Methodology
description: Metrics, data, and code
home_card: false
comments: true
order: 2
refactor: false
---

# Metrics
For each supplier we quantify the degree to which:

1) Supply & demand are time-matched
: We determine what power is contracted by a supplier and, on a half-hourly basis, how well the renewables match their load

2) Power is procured with certificates
: We distinguish renewable claims that are backed by power contracts from those that are based just on certificates

# Methodology
We connect data from:
1. The [Ofgem Renewables Register](https://renewablesandchp.ofgem.gov.uk/)
2. The [generation mix](https://www.nationalgrideso.com/data-portal/historic-generation-mix) from NGESO
3. Various [datasets from Elexon](https://bmrs.elexon.co.uk/api-documentation) (notably S0142)

# Code
All of our work is open-sourced on [Github](https://github.com/matched-energy/scores).



---
layout: post
title: Scores
description: Breaking down renewable claims into meaningful measures
home_card: true
comments: false
icon: fas fa-chart-line
order: 2
refactor: false
image:
  path: assets/img/timeseries.png
  lqip: data:image/webp;base64,VBORw0KGgoAAAANSUhEUgAAABAAAAAICAIAAAB/FOjAAAAAo0lEQVR4nFXQQU4EMRBD0f+daO5/TxZsoEXPQMwi3Ugsq+RXssrP9zeMiYpBadsCgGiCqnszf15PDYkGg1DuPMI/IPP1dWqIOiBoC39ASBQUUeZ5PNUakzLA1g28gLjLkTCPo0pdQKGk1cKO2et2MI3Mj2OoVRDGqr0HLgDWkDDSeZwPFOgGSOVqBq5dxnSMJmue3w+wuwRZvQGV7r9pTcfqiL9Wg0odsIxW3QAAAABJRU5ErkJggg==
---

# Metrics & Methodology

For each supplier we quantify the degree to which:

1) Supply & demand are time-matched
: We determine what power is contracted by a supplier and, on a half-hourly basis, how well the renewables match their load

2) Power is procured with certificates
: We distinguish renewable claims that are backed by power contracts from those that are based just on certificates

We connect data from the [Ofgem Renewables Register](https://renewablesandchp.ofgem.gov.uk/), the [generation mix](https://www.nationalgrideso.com/data-portal/historic-generation-mix) from NGESO, and various [datasets from Elexon](https://bmrs.elexon.co.uk/api-documentation) (notably S0142). All of our work is open-sourced on [Github](https://github.com/matched-energy/scores).

&nbsp;
![Matched Energy ](/assets/img/matched-logo-lines-small.png){: width="100" }

# Supplier scores

<table>
{% for page in site.scores %}
  <h3>
      <a href="{{ page.url | remove: ".html" }}">
        {{ page.title }}
      </a>
  </h3>
  <table>
    <tr>
      <th>Metric</th>
      <th>Score</th>
    </tr>
    <tr>
      <td>Annual certificate matching</td>
      <td>{{ page.annual_match_score }}</td>
    </tr>
    <tr>
      <td>Half-hourly certificate matching</td>
      <td>{{ page.hh_match_score }}</td>
    </tr>
    <tr>
      <td>Half-hourly power matching</td>
      <td>{{ page.power_match_score }}</td>
    </tr>
  </table>

{% endfor %}

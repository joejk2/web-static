---
layout: post
title: Scores
description: Power-matching KPIs for UK renewable suppliers
home_card: true
comments: false
icon: fas fa-chart-line
order: 2
refactor: false
image:
  path: assets/img/timeseries.png
  lqip: data:image/webp;base64,VBORw0KGgoAAAANSUhEUgAAABAAAAAICAIAAAB/FOjAAAAAo0lEQVR4nFXQQU4EMRBD0f+daO5/TxZsoEXPQMwi3Ugsq+RXssrP9zeMiYpBadsCgGiCqnszf15PDYkGg1DuPMI/IPP1dWqIOiBoC39ASBQUUeZ5PNUakzLA1g28gLjLkTCPo0pdQKGk1cKO2et2MI3Mj2OoVRDGqr0HLgDWkDDSeZwPFOgGSOVqBq5dxnSMJmue3w+wuwRZvQGV7r9pTcfqiL9Wg0odsIxW3QAAAABJRU5ErkJggg==
---

<br>

Using open datasets we interrogate the practices behind suppliers' renewable energy claims.
{: style="text-align: center; font-size: 110%; color: grey" }

As far as we're aware we are the first to do this.
{: style="text-align: center; font-size: 110%; color: grey" }

![Matched Energy ](/assets/img/matched-logo-lines-small.png){: width="150" }

## Scoring Methodology

#### Data
We correlate data from multiple sources:

| [**Ofgem Renewables Register**](https://renewablesandchp.ofgem.gov.uk)                          | Describes the renewables contracted by suppliers<br>on a monthly basis|
| [**Grid generation data**](https://www.nationalgrideso.com/data-portal/historic-generation-mix) | Historic timeseries of grid fuel-mix from which we infer<br>contracted renewables on a half-hourly |
| [**S0142 Elexon files**](https://bmrs.elexon.co.uk/api-documentation)                           | From which we calculate suppliers' total load                                  |

#### Metrics
We calculate the following:

<table>
  <tr>
    <td>
    <b>Annual Certificate-Matching</b>
    </td>
    <td>
    Fraction of load matched by renewable generation on an annual basis:<br><code>annual_generation / annual_load</code>
    </td>
  </tr>
  <tr>
    <td>
    <b>Half-hourly Certificate-Matching</b>
    </td>
    <td>
    As above, but on a half-hourly basis:<br>
    <code>1 - ∑<sub>half-hour intervals</sub> {max(0, load - generation) / load}</code>
    </td>
  </tr>
  <tr>
    <td>
    <b>Half-hourly Power-Matching</b>
    </td>
    <td>
    A qualitative assessment of the degree to which procurement is<br>
    power-based (in addition to certificates)
    </td>
  </tr>
</table>

#### Code
All of our work is open-sourced on [Github](https://github.com/matched-energy/scores).


![Matched Energy ](/assets/img/matched-logo-lines-small.png){: width="150" }

## Scores

> **Preliminary numbers! See individual suppliers' pages for known issues**
{: .prompt-danger}
{: style="text-align: center;" }

<table>
{% for page in site.scores %}
  {% if page.layout == 'supplier' %}
    <table>
      <tr>
        <th>
          <a href="{{ page.url | remove: ".html" }}">
            {{ page.title }}
          </a>
        </th>
        <th></th>
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
  {% endif %}

{% endfor %}

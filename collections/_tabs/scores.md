---
layout: post
title: Scores
description: Matching KPIs
home_card: true
comments: false
icon: fas fa-chart-line
order: 2
refactor: false
image:
  path: assets/img/timeseries.png
  lqip: data:image/webp;base64,VBORw0KGgoAAAANSUhEUgAAABAAAAAICAIAAAB/FOjAAAAAo0lEQVR4nFXQQU4EMRBD0f+daO5/TxZsoEXPQMwi3Ugsq+RXssrP9zeMiYpBadsCgGiCqnszf15PDYkGg1DuPMI/IPP1dWqIOiBoC39ASBQUUeZ5PNUakzLA1g28gLjLkTCPo0pdQKGk1cKO2et2MI3Mj2OoVRDGqr0HLgDWkDDSeZwPFOgGSOVqBq5dxnSMJmue3w+wuwRZvQGV7r9pTcfqiL9Wg0odsIxW3QAAAABJRU5ErkJggg==
---

> **Metrics and methodology are described [here](/scores/methodology)**
{: .prompt-tip }

> **Preliminary numbers! See individual suppliers' pages for known issues**
{: .prompt-danger }

<table>
{% for page in site.scores %}
  {% if page.layout == 'supplier' %}
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
  {% endif %}

{% endfor %}

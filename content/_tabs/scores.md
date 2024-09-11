---
layout: post
page_id: 3b8dac
title: Scoreboard
description: How well have suppliers decarbonised their power?
icon: fas fa-chart-line
order: 1
permalink: /scores
home_card: true
comments: false
toc: true
refactor: true
=image:
  path: /home/assets/solar-matching-preview.jpg
  lqip: data:image/webp;base64,
---

We use public datasets to analyse the power bought and sold by leading suppliers on an hour-by-hour basis and to score suppliers based on the degree to which they have decarbonised the power they sell to their customers.

As far as we're aware we are the first to do this.

{% include related-pages-small-cards.html related_posts="
  ff7eee How we calculate matching scores
  4431fc Matching Metrics Defined
" %}

## Scores for April 2022 to March 2023

> **Preliminary numbers! See individual suppliers' pages for known issues**
{: .prompt-danger}
{: style="text-align: center;" }

{% assign my_pages = site.scores | sort: "s_hh" | reverse %}
<table>
{% for page in my_pages %}
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
        <td>Annual matching </td>
        <td>{{ page.s_yr }}</td>
      </tr>
      <tr>
        <td>Half-hourly matching </td>
        <td>{{ page.s_hh}}</td>
      </tr>
      <tr>
        <td>Scoring confidence </td>
        <td>{{ page.confidence }}</td>
      </tr>
    </table>
  {% endif %}

{% endfor %}

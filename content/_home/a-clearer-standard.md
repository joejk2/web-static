---
layout: post
page_id: 9bf586
title: A clearer standard
description: How do suppliers score against more rigorous metrics?
permalink: /:slug
date: 2019-08-08 11:33:00 +0000
last_modified_at: 2024-08-15 11:33:00 +0000
home_card: true
comments: false
toc: true
refactor: true
order: 2
math: true
image:
  path: /home/assets/matching-score-preview.png
  lqip: data:image/webp;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAAIABADASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2yfUADiov7Q+Xiiisn/FRHM+U/9k=
---

The current accounting methodology is [deficient](the-problem-with-renewable-claims) so what would be a better way to characterise renewable offers? The answer is very simply that the accounting of renewable claims should be _no different_ from the accounting of power.

## Temporal matching of power
![Power surplus & deficit](/home/assets/surplus-deficit-1.png){: w="450" h="300" .right}
Suppliers procure power on behalf of their customers and are responsible for maintaining the balance between the supply from generators such as wind-farms and the aggregate demand of their customers.

Power can be packaged and sold in many different forms but is always underpinned by a continuous exchange in which power is traded over chunks of time that are half-hourly or shorter.
In every half-hour each supplier strives to procure exactly the right amount of power to match the needs of their customers.

In reality it's not possible to perfectly match supply and demand all the time because
it's not possible to perfectly forecast the demand of customers or the output of generators (especially wind and solar generators).

In a half-hour where the supplier has overestimated demand and/or underestimated supply there is a _surplus_ of power that needs to be sold back to the market. Conversely, in a half-hour where the supplier has a _deficit_ of power they will need to buy from the market.
A supplier is potentially selling in one half-hour window and buying in the next.

Suppliers are incentivised to minimize surplus and deficit because both create market exposure: a last-minute sale of power may be at a loss and a last-minute purchase may be for a premium.

The power sector and the physical stability of the electrical grid depends on the supplier-mediated temporal match of supply and demand[^balancing-mechanism].

[^balancing-mechanism]: Shorter-term balancing is also necessary but this is managed by National Grid through the 'Balancing Mechanism' and 'Ancillary Services' that operate on the minute-by-minute and second-by-second timescale respectively.

## Renewable surplus and deficit
When viewed from the perspective of power flow on the grid the implications on renewable claims are clear:

![Renewables surplus & deficit](/home/assets/surplus-deficit-2.png){: w="450" h="300" .right}
**Renewables _surplus_**\
When a supplier has over-procured renewables and/or overestimated demand there is a surplus of renewable power which must be sold to the market.
A surplus carries a potential financial loss but has no bearing on renewables claims because
the power is consumed elsewhere by the customers of other suppliers.

**Renewables _deficit_**\
When a supplier has under-procured renewables and/or underestimated demand there is a deficit and power must be bought from the open market.
Because markets don't distinguish between renewable and non-renewable power[^granular-nordpool] this means the supplier is unavoidably buying mixed power that includes fossil-fueled power[^imports].

[^granular-nordpool]: TODO: Granular Nordpool collaboration.

[^imports]: Deficits will be due to low output from wind- and solar-farms and, until we have more energy storage, must be filled by fossil-fueled generators.

## Temporal-matching score
Most pertinent to renewable claims are periods where there is a **renewables deficit** since these are the half-hours in which the supplier has buy to mixed power, including fossil-fueled power.

Until a supplier has _zero_ renewables deficit they will always have _some_ dependency on fossil-fueled power[^surplus].

[^surplus]: A large _renewables surplus_ is also problematic because it implies inefficiencies and potential financial losses, but surpluses don't affect the carbon-intensity of power either way.

From the renewables deficit we can define a **matching score** which aggregates the deficit over all periods of time and divides by the _total\_demand_ so that we can compare suppliers of different sizes. Higher scores are better - a supplier that gets 100% has no renewables deficit[^import-assumptions].

[^import-assumptions]: This simplified formulation assumes that deficits are entirely filled by fossil-fueled power which leads to an underestimation of the score.

$$
\begin{equation*}
\mathrm{temporal\_matching\_score} =
\left(1 - \sum_{t} \frac{\mathrm{renewables\_shortfall_{t}}}{\mathrm{total\_demand}} \right) \times 100\%
\end{equation*}
$$

![Matching score](/home/assets/surplus-deficit-hourly-matching.png){: w="800" h="533"}
_The temporal-matching score drops as deficits accumulate but is unaffected by periods of surplus_

## Volumetric score
The current volumetric can be expressed in the same terms but with allowance for a renewables surplus at one time to _cancel out_ a deficit at another.

<p>
<details>
  <summary>
  <i>Click for mathematical definition</i>
  </summary>
  $$
  \begin{equation*}
  \mathrm{volumetric\_matching\_score} =
  \left(1 - \sum_{t} \frac{\mathrm{renewables\_shortfall_{t} - renewables\_surplus_{t}}}{\mathrm{total\_demand}} \right) \times 100\%
  \end{equation*}
  $$
</details>
</p>

![Annual matching scores](/home/assets/surplus-deficit-hourly-yearly-matching.png){: w="450" h="300" .right}
The volumetric score misses the challenge of temporal matching and, because it allows surplus to accumulate as a credit, the volumetric score can be <i>bigger</i> than 100%. Neither of these characteristics make sense from a power-flow perspective but it is the way the [accounting currently works](/how-renewable-matching-works).

Because of the way they are defined volumetric scores will always be bigger than temporally-matched scores and they are what the industry uses to back '100% renewable' claims.

## Octopus
Octopus is one of the largest clean suppliers and has driven many innovative programs to help their customers reduce their carbon footprint. Their volumetric score is 100%[^octopus-score] and they market their power as '100% renewable'.

[^octopus-score]: TODO validate

In the year starting April 2022 Octopus had a substantial surplus of renewables between May to October but a persistent deficit from November to March and, as a result, their temporal-matching score is 66% and their volumetric score is 100%. Further details on Octopus' scores are [here](/scores/octopus_scores).

![Octopus matching score](/home/assets/surplus-deficit-octopus.png){: w="800" h="533"}

<!-- TODO: update to year ending April 2024 -->
<!-- TODO: fix bug (?) in annual matching score -->

## Good Energy
Good Energy prides itself on a premium offering and dedicated customers and also have a 100% volumetric score.

Supply and demand are well matched throughout the year and the temporal-matching score is 91% Further details [here](/scores/good-energy_scores).

![Good Energy matching score](/home/assets/surplus-deficit-good-energy.png){: w="800" h="533"}

**TODO**: correct load curves for Good Energy

## Why temporal matching matters
The volumetric score is convenient and indicative but it does not reflect power flow or the physical challenges of running a low-carbon grid. By contrast, the temporal-matching score reflects the physics of the grid.

Because the temporally-matched score is the rigorous measure it helps distinguish the leading practices in the sector. Even among suppliers who are 100% volumetrically matched there is substantial differentiation on a temporal basis (see [scoreboard](/scoreboard)).

Temporally-matched scores help inform customers and direct them to the practices and suppliers that are doing the most to decarbonise the grid.

<!-- TODO: how much storage would Octopus need, versus Good Energy? Make this a blog post? -->

<!-- TODO: make this point

So moving from annualised accounting to proper, half-hourly accounting raises the bar and tariffs that were previously marketed as exclusively renewable will need to be rebranded.

-->

## Related pages
{% include related-pages-small-cards.html related_posts="
  ff7eee-how-we-calculate-matching-scores
  3b8dac-scoreboard
  159049-how-does-annual-matching-work
  2a0abe-why-does-matching-matter
"%}




## Footnotes


{% comment %}

Intro:
- [The Problem with Renewable Claims]({% link _home/the-problem-with-renewable-claims.md %})

Suppliers balance supply
The role of a supplier:
- balancing
- schematic of price signals

Review `problems` of annual matching:
1.
2.
3.

Better metrics:
- half-hourly
- exactly like power matching
- schematic of certificate-matching

Methodology:
- overview
- first to do this
- [details]({% link _home/how-we-calculate-matching-scores.md %})

Numbers:
- Charts and numbers for
  - Octopus
  - Good Energy
  - Squeaky Clean
- Commentary

[Scoreboard](/scoreboard)

Why this is important


{% endcomment %}

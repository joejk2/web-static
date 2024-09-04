---
layout: post
page_id: 9bf586
title: A better yardstick
description: How well do suppliers score against more rigorous measures?
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

The current accounting methodology is [deficient](the-problem-with-renewable-claims) so what would be a better way to quantify the renewable content of power?
The answer is easy: the accounting of _renewables_ should be no different from the accounting of _power_.

## Temporal matching

![Supply-demand imbalance](/home/assets/imbalance.png){: w="450" h="300" .right}
Suppliers procure power on behalf of their customers and are responsible for maintaining the balance between the supply from generators, such as wind- and solar-farms or fossil-fueled plants, and the aggregate demand of their customers. The supply business, like the underlying power markets, must balance supply and demand on a <i>half-hourly basis</i>[^balancing-mechanism].

In every half-hour of every day, each supplier needs to have procured exactly the right volume of power to match the needs of their customers.

In reality it's impossible to supply and demand perfectly all the time because its hard to precisely forecast the demand from forecasts and the output of wind- and solar-farms.

When a supplier has overestimated demand and/or underestimated supply in a half-hour window they are left with a surplus of power that they need to sell back to the market. Conversely, in half-hour windows where the supplier has a deficit of power they will need to buy from the market.

Suppliers are incentivised to minimize their surplus and deficit because both create an exposure to the market which carries risk: in order to shed surplus power the supplier may have to sell at a loss and in order to fill a deficit they may need to buy at a premium.

The power sector and underlying grid infrastructure depends on the half-hourly balance between supply and demand, as mediated by suppliers.

[^balancing-mechanism]: Shorter-term balancing is also necessary but this is managed by National Grid through the 'Balancing Mechanism' and 'Ancillary Services' that operate on the minute-by-minute and second-by-second timescale respectively.

## Renewable surplus and deficit
As applied to renewables accounting this framing means that in any half hour the supplier will have:

![Renewable supply-demand imbalance](/home/assets/imbalance-renewables.png){: w="450" h="300" .right}
**A renewables _surplus_**\
When a supplier has over-procured renewables and/or overestimated demand they will have a surplus of renewable power which they must sell back to the market. From the perspective of power-flow a surplus has no bearing on the renewable claims of a supplier because the power ends up consumed elsewhere.

**A renewables _deficit_**\
When a supplier has under-procured and/or underestimated demand they will have a deficit and must buy power from the open market. Because these markets don't distinguish between renewable and non-renewable power the supplier will unavoidably be buying fossil-fueled power[^imports].

[^imports]: Moreover, most deficits will be due to low output from wind- and solar-farms and, until we have more energy storage, must be filled by fossil-fueled generators.

<!-- TODO P1: simplify these charts to show just a single day) -->

## Temporal matching score
Most pertinent to renewable claims are periods where there is a **renewables deficit** since these are the half-hours in which the supplier has to mixed power, which will unavoidably include fossil-fueled power.
Until a supplier has _zero_ deficit they will always have _some_ dependency on fossil-fueled power[^surplus].

[^surplus]: A large _renewables surplus_ is also problematic because it implies inefficiencies and potential financial losses, but surpluses don't affect the carbon-intensity of power either way.

  From the renewables deficit we can define a **matching score** where we aggregate the shortfall over all half-hour periods and divide by the _total\_demand_ so that we can compare suppliers of different sizes. We express the shortfall as a loss (we subtract it) so that a supplier with zero deficit will score 100%[^import-assumptions].

[^import-assumptions]: This formulation of the matching score assumes that shortfalls are met entirely by fossil-fueled power - this is somewhat conservative.

$$
\begin{equation*}
\mathrm{half\_hourly\_matching\_score} =
\left(1 - \sum_{hh} \frac{\mathrm{renewables\_shortfall_{hh}}}{\mathrm{total\_demand}} \right) \times 100\%
\end{equation*}
$$


![Matching score](/home/assets/matching-score.png){: w="800" h="533"}
_TODO: baseline score at 100% and use same period as charts above_

<!-- TODO
- Add carbon intensity (and relate to the _price_ of imbalance in the power context)
-->

## Volumetric score
The current _annual_ score can be expressed in the same terms but, but contrast, this measure allows the
_renewables-surplus_ in one half-hour to cancel out _renewables-deficit_ in another.

<p>
<details>
  <summary>
  <i>Click for mathematical definition</i>
  </summary>
  $$
  \begin{equation*}
  \mathrm{annual\_matching\_score} =
  \left(1 - \sum_{hh} \frac{\mathrm{renewables\_shortfall_{hh} - renewables\_surplus_{hh}}}{\mathrm{total\_demand}} \right) \times 100\%
  \end{equation*}
  $$
</details>
</p>

![Annual matching scores](/home/assets/matching-score-annual.png){: w="450" h="300" .right}
Because it allows surplus to accumulate as credit the volumetric score can be <i>bigger</i> than 100%. None of this makes sense from a power-flow perspective but it is the way the [accounting currently works](/how-does-annual-matching-work).

<!-- _TODO: add labels, re-base, consistent time-periods_ -->
Volumetric scores will always be bigger than temporally matched scores, and what the industry uses to back '100% renewable' claims.

<br>
## Octopus
Octopus is one of the largest clean suppliers and has driven many innovative programs to help their customers reduce their carbon footprint.

In the year starting April 2022 Octopus had a substantial surplus of renewables between May to October, and persistent shortfall from November to March. Their temporal-matching score is 66% and their volumetric score is 100%.

Shaping this supply-procurement strategy into power that is fully renewable (i.e. a 100% temporally-matched score) would require inter-seasonal energy storage to, for example, allow renewable-power that was generated in October to be consumed in January. With current technology and infrastructure this would be impossible or - at least - exorbitantly expensive. Further details on Octopus' scores [here](/scores/octopus_scores).

![Octopus matching score](/home/assets/matching-score-octopus.png){: w="800" h="533"}

<!-- TODO: update to year ending April 2024 -->
<!-- TODO: fix bug (?) in annual matching score -->

## Good Energy
Good Energy prides itself on a premium offering and dedicated customers.

Supply and demand are well matched throughout the year: the temporal-matching score is 91% and the volumetric score is 100%. This supply-procurement strategy is much closer to providing power that is fully renewable (though it does depend on a lot biomass generation). Further details [here](/scores/good-energy_scores).

![Good Energy matching score](/home/assets/matching-score-good-energy.png){: w="800" h="533"}


## Why temporal matching matters
Half-hourly matching is consistent with grid-physics and the way that suppliers are required to balance the supply and demand of their power, and it resolves the inconsistencies and idiosyncrasies of annual matching.

Because it is the rigorous measure of the renewable content of power it helps distinguish leading practices and suppliers. Even amongst the group of suppliers who are 100% matched on an annual basis there is substantial differentiation on a half-hourly basis (see the [scoreboard](/scoreboard]).

By distinguishing the cleanest power, half-hourly scoring helps direct consumers and investment into the technologies that are needed to deeply decarbonise our grid.


<!-- TODO: how much storage would Octopus need, versus Good Energy? Make this a blog post? -->


<!-- TODO: make this point

So moving from annualised accounting to proper, half-hourly accounting raises the bar and tariffs that were previously marketed as exclusively renewable will need to be rebranded.

-->

## Related pages
{% include related-pages-small-cards.html related_posts="
  453e05-how-we-calculate-matching-scores
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

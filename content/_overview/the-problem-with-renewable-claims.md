---
layout: post
title: The problem with renewable claims
description: Suppliers often market their electricity as "100% renewable" but how justified are the claims?
home_card: true
comments: false
toc: true
refactor: true
order: 1
image:
  path: /overview/assets/solar-matching-preview.jpg
  lqip: data:image/webp;base64
---
<!-- TOOD: customise image above -->


## The claim

These days many energy suppliers[^clean-suppliers] compete on their green credentials with the most usual claim being that their electricity is _"100% renewable"_.

[^clean-suppliers]: [currently XX]() in the UK

Taken at face value this claim implies that a supplier can match all the demand from all of its customers at every single moment with a ready supply of renewable energy sources such as wind, solar, or hydroelectric.

And this would be amazing! It'd mean that these suppliers have found a way to entirely eradicate all the carbon from a major sector of the economy, one that accounts for X% of emissions globally. It's a simple, powerful message, and consumers love it. which is why X% are on 'green tariffs' and $ are spent on green-marketing.

But what does the claim actually mean? Does it add up? What about on still nights when there's no wind or solar and we're all at home with our lights on and our EV charging?

Is there some hand-waving going on?


## Renewable Energy Certificates

Before we get into the details we need to talk about 'renewable energy certificates'.

These certificates go by different names in different jurisdictions[^REGOS] but they all work in the same way. Each unit of energy[^MWh] that is produced by a renewable source is awarded a certificate which is tracked in some centralised, regulated database[^rego-register].

[^REGOS]: these certificates are called Renewable Energy Guarantee of Origin (REGOs) in the UK, Guarantees of Origin (GoOs) in the EU, and Renewable Energy Certificates (RECs) in the USA.

[^MWh]: Registers generally work in increments of megawatt-hours (MWh)

[^rego-register]: In the UK certificates are tracked by the [Ofgem Renewables and CHP Register](https://renewablesandchp.ofgem.gov.uk)

![The certificate matching process](/overview/assets/certificate-matching.png)
_Renewable power is sold in wholesale markets and separately tracked in a certificate registry - suppliers that buy equal volumes of power and certificates can claim to be "100% renewable"_

So far so good, certificates are a good way of distinguishing a unit of renewable energy from a unit of fossil-fueled energy and if a supplier buys enough certificates to match their consumers' demand then they are, in some sense, "100% renewable".

Regulators endorse certificate-based accounting and require them to be part of a suppliers' annual 'fuel-mix disclosure'[^ofgem].

[^ofgem]: For example, in the UK, the Office of Gas and Electricity Markets (Ofgem) says ['Renewable Energy Guarantees of Origin certificates must be held in a supplier’s account](https://www.ofgem.gov.uk/environmental-and-social-schemes/renewables-obligation-ro)

## Annual matching
This is where the hand-waving starts.

The general practice is to balance demand with generation, via certificates, on an _annual basis_. This means that:
- demand is aggregated over all customers over a year
- renewable generation certificates are also aggregated over the same year
- when the generation total meets the demand total suppliers claim to be "100% renewable"

The process is simple, robust, and easily audited but its obvious deficiency is that it pays no attention to when energy is consumed or generated, other than both need to happen in the same year. This means that the process allows solar energy generated during the day to be counted against energy consumed at night and wind energy generated in one season to be counted against consumption in another!

it is inherently limited because it is just _annual_ and all of the complications of _when_ energy is consumed and generated are ignored. The process just requires that total annual generation meets total annual demand!

In reality the grid requires that demand and generation are perfectly balanced at every single moment. Energy has to be consumed in the same moment it is generated and even slight, short-lived imbalances cause brown-outs or black-outs[^frequency].

[^frequency]:  Grid operators primarily track the frequency of the system - 50 Hz in most of the world - which has a tolerance of less than ±1% in normal operating conditions.

[^cool-charts]: This site shows the real-time demand and generation on the UK grid: [https://grid.iamkate.com](https://grid.iamkate.com)

So, though grid-physics require generation and demand to be perfectly balanced at all times, current accounting practices do not.

## An example
The way that suppliers are currently marketing renewable energy implies that solar energy can be counted against energy consumed at night, and that wind energy generated in one season can be counted against consumption in another.

In practice this is unphysical...

Need #1:
The only way to consume energy at some time after it was generated is to store it first, for example by pumping water uphill at a hydroelectric plant or by charging lithium-ion cells that are collected in vast numbers in shipping containers. The amount of storage on the grid is still a long way from the levels necessary to meaningful affect the generation/demand imbalance (more on this later).

Need #2:
Load flexibility

<!-- TODO: larger & better resolution, add storage & load-flexibility -->
![unmatched demand & generation](/overview/assets/solar-matching.png){: width="972" height="589" }
_Suppliers can currently offset daytime solar against night-time consumption without needing
to invest in the energy storage or load flexibility that could reshape these curves_

![The need for storage and demand-flexibility](/overview/assets/solar-matching-flexibility-annotation.png){: .left w="480" h="195" }


## How Octopus does it
![Octopus renewable power](/overview/assets/octopus-renewable-power.png){: width="972" height="589" }

## Power procurement

The deficiencies of annual matching are stark when compared to power procurement.

The core business - and liability - of a supplier is to procure power on behalf of their customers and here,
without any shadow of doubt, annual matching isn't sufficient.
  The price of power varies substantially between -XX and +XX depending on the balance of supply and demand. In the summer in the UK prices are generally low, in the winter they are generally high, in swing (?) seasons they are increasingly negative. During the day prices are generally cheapest at night and highest in the evenings[^cool-charts].

![Day-ahead power prices](/overview/assets/day-ahead-prices.png){: w="700" h="400"}




The underlying unit is a volume of energy in a half-hour block, and the entire industry is constitutionally setup to manage the balance between supply and demand on this [^balancing-mechanism] timescale.
![The discrepancy between power- and certificate-based accounting](/overview/assets/certificate-matching-hourly-annotation.png){: .right w="480" h="320"}
So the annual accounting practice behind renewable claims is at odds, not only with the physics of the grid, but also with the existing, core business processes! Annual matching really is a historical aberration.

[^balancing-mechanism]: todo

## Missed opportunity

From the perspective of grid-decarbonisation the primary purpose of green tariffs is to help fund renewable infrastructure funds. Consumers pay a premium for the renewable origination of their energy, suppliers use this premium to buy renewable certificates, and this constitutes another income stream which helps justify the upfront investment.

And, marketing integrity aside, green tariffs work. They currently come at a 5% premium and have been adopted by a third of UK households. The cumulative effect is an extra £500 million/year that goes, via certificates, to the owners of renewable projects. The additional revenue stream factors into investment decisions and helps derisk new projects.

[^green-tariffs]:

The market signal sent by green tariffs is not insignificant since, by comparison, the recently-increased clean energy subsidy from the new Labor government is £1.5 billion/year[^CfD].

[^CfD]: https://www.gov.uk/government/news/record-breaking-funding-for-clean-energy-in-britain

The first problem is that current marketing claims probably induce complacency: if truly carbon-free energy was indeed available for only a 5% premium it would suggest that we are much closer to addressing climate change than we really are (though, perhaps, begging the question of what we've been waiting for).

The second problem is that annual matching is increasingly detached from the most pressing needs of the grid. As volume of renewable power on the grid[^renewable-mix] increases the imperative is increasingly not just to generate clean energy, but to generate it at the right times.

[^renewable-mix]:

It is no longer valuable to blindly generate renewable power indiscriminately and, indeed, the UK already curtails power over XX hours worth £XX (and CA...). Instead we need increasingly need to match renewable generation & demand,  nd this
And, in order for green tariffs to genuinely incentivise investments where they are most needed, they need to account for the temporal matching of generation and demand.

VVVVVVVVVVVVVVVVVVVVVVVV

GOOD ENERGY, SQUEAKY CLEAN

^^^^^^^^^^^^^^^^^^^^^^^^

_should be valued differently?_

And, in order for them to remain a genuine attempt to accelerate grid decorbonisation, the accounting behind green tariffs needs to be updated.

Annual matching no longer cuts it: the accounting behind renewable claims needs to become an honest reflection of the fundamental challenges of low-carbon power.

## Something better

Temporal matching

{% include related-page-cards.html related_pages="3b8dac" %}

Physics // accounting
  power & certificates

More honesty
  _not 100% renewable"_

More imperative
  not just renewables
  but storage & flexibility

## Bringing transparency

Immediate priority.

And this is the purpose of Matched.

The problem is that certificate-based accounting of renewable energy is

The regulator doesn't require anything more, and the






<!-- At Octopus, we primarily purchase your electricity from wind, solar and hydro (water) to power our 100% green electricity. Non-green energy, such as coal or natural gas however does produce carbon emissions when you use it. -->

## Related pages
{% include explicit-related-posts.html related_pages="3b8dac" %}



 to need ## Footnotes

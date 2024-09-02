---
layout: post
page_id: 159049
title: How does renewable matching work?
description: ....
permalink: /:title
date: 2019-08-08 11:33:00 +0000
last_modified_at: 2024-08-15 11:33:00 +0000
home_card: false
comments: false
toc: true
refactor: true
order: 0.1
=image:
  path: /home/assets/solar-matching-preview.jpg
  lqip: data:image/webp;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAAIABADASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2yfUADiov7Q+Xiiisn/FRHM+U/9k=
---

Power is a commodity that is traded in markets that don't track the origin of power. Generators feed their power onto high-voltage grids that serves entire nations, and from which end-users consume indiscriminately.

So how then do we track the origin of a suppliers' power and the degree to which it is renewable?


## Renewable certificates
Since power markets don't track the origination of power, a separate mechanism is necessary.

The general solution adopted worldwide is to issue a 'certificate' for every unit of energy[^MWh] that is generated from a renewable source, and to track these certificates in a centralised, regulated database[^rego-register]. The certificates are called _Renewable Energy Guarantees of Origin_ in Britain, _Guarantees of Origin_ in the EU, and _Renewable Energy Certificates_ in the US.

[^MWh]: Registers generally work in increments of megawatt-hours (MWh)

[^rego-register]: In the UK certificates are tracked by the [Ofgem Renewables and CHP Register](https://renewablesandchp.ofgem.gov.uk)
In order to offer renewable power to customers, a supplier must buy a renewable certificate for each unit of power that they serve. Trading is often done through intermediaries but the end-effect is that renewable generators sell certificates and suppliers buy them.

![The certificate matching process](/home/assets/certificate-matching.png)
_Renewable power is sold in wholesale markets and separately tracked in a certificate registry - suppliers buy from each market separately."_

## Representing power-flow
In order for renewable certificates to closely represent the flow of power to end-consumers they must be:

1. Volumetrically matched
: Most obviously, for energy that is sold as entirely renewable there needs to be a certificate for every unit of energy that is sold to end-consumers: a supplier that serves customers a terawatt-hour of energy needs a terawatt-hour of renewable certificates.

2. Locationally matched
: Certificates need to be bought from generators that are on the same electrical grid as the consumers: generators are irrelevant unless physically connected to consumers.

3. Temporally matched
: The certificates purchased must be from generators that were producing power at the same time as it was being consumed by customers: the grid depends on supply and demand being balanced at all times.

## Current practice
The current practice amongst suppliers who offer '100% renewable energy' is to buy certificates that match demand volumetrically and locationally, but not temporally[^annual-matching].

[^annual-matching]: Or, at best, to buy certificates within the same _year_ as demand, which is a a far-cry from the half-hourly period (or less) on which power markets settle.

This is at odds with grid-physics and the challenges of deep decarbonisation.

_(<u>Aside:</u>: this practice is actually really just an offsetting scheme since it allows certificates bought at one time to offset consumption at another time.)_

## The temporal movement
The Matched initiative is part of a growing movement that calls for temporal-matching to be adopted by the industry in order to increase the transparency of green tariffs and their impact on grid investments.

Our [scoreboard](/scoreboard) rates suppliers on their temporal matching and, even amongst those with green tariffs, identifies notable differences between suppliers.

## Conclusion
Certificates are a good mechanism for tracing the generation and consumption of renewable energy and distinguishing it from fossil-fueled energy: they allow suppliers to offer cleaner power to the customers and they incentivise the development of new renewable infrastructure.

However, in order to provide a clear market signal, certificates need to be temporally matched with demand.

## Related Pages

{% include related-pages-small-cards.html related_posts="
  9bf586-a-better-yardstick
  2a0abe-why-matching-matters
  3b8dac-scoreboard
"%}

## Footnotes



{% comment %}

Introducing temporal-matching into th

## Additionality
Green tariffs have the potential to inform and motivate grid investments by channeling the premium that consumers pay for these tariffs, via certificates, to the investors of renewable projects. If high enough, this premium has the potential to justify investments that would otherwise be unprofitable.

However, historically the 'additionality' of green tariffs has been limited by the very low price of renewable certificates[^certificate-prices] and this is, in part, because the current practice omits the need for the temporal-matching of certificates.




Transparency and clarity aside, temporal-matching will improve the impact that green tariffs have








As described [here](/a-better-yardstick), temporal-matching is






supplier who sell power as '100% renewable' is to buy certificates that

in most markets is for certificates to be matched with power on a **volumetric** and **locational** basis, but not on a **temporal** basis.

The current practice amongst energy suppliers of matching certificates on a volumetric and locational basis, but not temporal basis, is really a form of offsetting since it accumulates renewable generation at one time as a credit to offset power consumption at another.



## Additionality
Since customers pay a premium for cleaner power which, via certificates, accumulates to the investors of renewable generators the whole system should help incentivise the development of new renewable projects.

However, the degree to which investment decisions are driven by green tariffs depends on the price of certificates which are generally low[^certificate-prices]. As a result the additionality of green tariffs is generally low[^additionality].


[^additionality]: [Does the purchase of voluntary renewable energy certificates lead to emission reductions? A review of studies quantifying the impact.](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4636218)


## Raising the bar
The problem is




Accordingly, the 'additionality' of green tariffs is generally judged to be small.

The fundamental issues




And, moreover, as renewables projects become increasingly cost-competitive and dominant, the price

in their own right, the price of certificates will decline further.


However, historically the price of renewable certificates has been very low and so the system has had limited effect (low 'additionality') on grid investments.

The fundamental issues are that:
1. Renewable projects are increasingly
2.

## Raising the bar
- clarifying language
- temporal matching
- bundling, and new assets








relies on renewable power at one moment in time to


risks - notably greenwashing -

Other approaches can be

Volumetric- and locational-matching are now generally accepted as standard conditions; there is not


There are other approaches, such as emissions-offsetting, and they may





**4) Power matching**
... particularly from new assets

This condition is generally uncontroversial: the only alternative is carbon-offsetting

## Additionality

Greenwashing

And, nominally at least, the sale of certificates helps incentivise the development of new renewable projects by providing an additional source of revenue for them.

The question is though is how much

Efficacy of investment
How much is invested


## The power-based perspective


## Matched take
Selling power as 'renewable' means that it is:
- volumetrically matched
- co-located
- temporally-matched

Though they carry more risk of greenwashing other approaches may also be valuable in certain conditions, but they are best considered as 'offset' schemes. They cannot be claimed to as 'renewable power'.

Additionally, as secondary considerations, the Matched initiative will quantify the degree of power-matching and, further,

sell cleaner energy to customers that wanttors of renewable projects.






## Trading certificates

There's nothing about the system that requires the certificates and power to be coupled so a supplier could get power from one ... but some suppliers prefer to couple.

Theoretically the two approaches should be equivalent but there are some nuances which we will cover in a separate post.

In theory the price of the certificate, and the value to the renewable investor, should be the same in both cases but, in practice, there are some subtle differences that we will cover in a separate post.



<!-- TODO: read about REGO clearing -->



Suppliers
Certificates are traded, potentially through intermediaries, but



So far so good, certificates are a good way of distinguishing a unit of renewable energy from a unit of fossil-fueled energy and if a supplier buys enough certificates to match their consumers' demand then they are, in some sense, "100% renewable".

Regulators endorse certificate-based accounting and require them to be part of a suppliers' annual 'fuel-mix disclosure'[^ofgem].

[^ofgem]: For example, in the UK, the Office of Gas and Electricity Markets (Ofgem) says ['Renewable Energy Guarantees of Origin certificates must be held in a supplier’s account](https://www.ofgem.gov.uk/environmental-and-social-schemes/renewables-obligation-ro)

## Bundled versus unbundled power


## Additionality
... other energytag attributes: deliverability, additionality, temporality

https://www.edpr.com/north-america/edpr-na-energy-insight-green-hydrogen-defense-three-pillars-emission

## Hourly versus yearly



### Why this matters
- additionality, deliverability, matching
- evidence of impact

{% endcomment %}

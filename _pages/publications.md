---
layout: page
permalink: /publications/
title: Publications
description: Publications by categories in reversed chronological order.
years: [2025, 2024, 2023, 2022]
nav: true
---
<!-- _pages/publications.md -->
<div class="publications">

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% capture bib %}{% bibliography -f papers -q @*[year={{y}}]* %}{% endcapture %}
  {{ bib | bold_names }}
{% endfor %}

</div>

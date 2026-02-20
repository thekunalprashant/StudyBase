---
layout: home
title: Math Compendium
---

# Competitive Mathematics Notes

Techniques, strategies, and problem-solving patterns for math competitions.

---

## Topics

{% assign topic_pages = site.pages | where_exp: "page", "page.path contains 'topics/'" | where_exp: "page", "page.name == 'index.md'" | sort: "title" %}

{% for topic in topic_pages %}
{% assign word_count = topic.content | number_of_words %}
{% assign read_time = word_count | divided_by: 200 %}
{% if read_time == 0 %}{% assign read_time = 1 %}{% endif %}

### [{{ topic.title }}]({{ topic.url | relative_url }})

{{ topic.description | default: "Competition math techniques" }}

⏱️ {{ read_time }} min read

---
{% endfor %}

## Coming Soon

- Inequalities (AM-GM, Cauchy-Schwarz)
- Combinatorics & Counting
- Number Theory
- Geometry Strategies

---

## About

Personal notes documenting competition math techniques. Built for quick reference and rapid review before contests.
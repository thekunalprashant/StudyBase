---
layout: home
title: Math Compendium
---

# Competitive Mathematics Notes

Techniques, strategies, and problem-solving patterns for math competitions.

---

## 🔥 Popular Topics

{% assign popular = site.pages | where_exp: "page", "page.path contains 'topics/'" | where_exp: "page", "page.name == 'index.md'" | where: "popular", true %}
{% if popular.size > 0 %}
{% for topic in popular %}
- **[{{ topic.title }}]({{ topic.url | relative_url }})** — {{ topic.description | default: "Competition math techniques" }}
{% endfor %}
{% else %}
- **[Value Substitution]({{ '/topics/value-substitution/' | relative_url }})** — Master the art of solving complex problems in 12-30 seconds
{% endif %}

---

## 📚 All Topics (Newest First)

{% assign topic_pages = site.pages | where_exp: "page", "page.path contains 'topics/'" | where_exp: "page", "page.name == 'index.md'" | sort: "date" | reverse %}

{% if topic_pages.size > 0 %}
{% for topic in topic_pages %}
{% assign word_count = topic.content | number_of_words %}
{% assign read_time = word_count | divided_by: 200 %}
{% if read_time == 0 %}{% assign read_time = 1 %}{% endif %}

### [{{ topic.title }}]({{ topic.url | relative_url }}) {% if topic.popular %}🔥{% endif %}

{{ topic.description | default: "Competition math techniques" }}

⏱️ {{ read_time }} min read {% if topic.date %}• {{ topic.date | date: "%B %Y" }}{% endif %}

---
{% endfor %}
{% else %}
*No topics yet.*
{% endif %}

---

## 🚀 Coming Soon

- Inequalities (AM-GM, Cauchy-Schwarz)
- Combinatorics & Counting
- Number Theory
- Geometry Strategies

---

## 🤝 Contribute

Want to add a topic? [Learn how to contribute →]({{ '/about/' | relative_url }})

---

## About

Personal notes documenting competition math techniques. Built for quick reference and rapid review before contests.
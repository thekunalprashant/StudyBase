---
layout: home
title: Math Compendium
---

# Competitive Mathematics Notes

Techniques, strategies, and problem-solving patterns for math competitions.

---

## Topics

{% assign topic_pages = site.pages | where_exp: "page", "page.path contains 'topics/'" | where_exp: "page", "page.name == 'index.md'" | sort: "title" %}

{% if topic_pages.size &gt; 0 %}
&lt;ul class="topic-list"&gt;
{% for topic in topic_pages %}
  {% assign word_count = topic.content | number_of_words %}
  {% assign read_time = word_count | divided_by: 200 %}
  {% if read_time == 0 %}{% assign read_time = 1 %}{% endif %}
  
  &lt;li class="topic-item"&gt;
    &lt;h3&gt;&lt;a href="{{ topic.url | relative_url }}"&gt;{{ topic.title }}&lt;/a&gt;&lt;/h3&gt;
    &lt;p&gt;{{ topic.description | default: "Competition math techniques" }}&lt;/p&gt;
    &lt;span class="read-time"&gt;⏱️ {{ read_time }} min read&lt;/span&gt;
  &lt;/li&gt;
{% endfor %}
&lt;/ul&gt;
{% else %}
&lt;p&gt;&lt;em&gt;No topics yet. Add folders in &lt;code&gt;/topics/&lt;/code&gt;&lt;/em&gt;&lt;/p&gt;
{% endif %}

---

## Coming Soon

- Inequalities (AM-GM, Cauchy-Schwarz)
- Combinatorics & Counting
- Number Theory
- Geometry Strategies

---

## About

Personal notes documenting competition math techniques. Built for quick reference and rapid review before contests.
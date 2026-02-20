---
layout: home
title: Math Compendium
---

<div class="hero">
  <h1>Math Compendium</h1>
  <p>Techniques, strategies, and problem-solving patterns for competitive mathematics.</p>
</div>

<div class="wrapper">

## Featured Methods

<div class="topic-list">
{% assign popular = site.pages | where_exp: "page", "page.path contains 'topics/'" | where_exp: "page", "page.name == 'index.md'" | where_exp: "page", "page.url != '/topics/'" | where: "popular", true %}
{% if popular.size > 0 %}
{% for topic in popular %}
  <div class="topic-item">
    <h3><a href="{{ topic.url | relative_url }}">{{ topic.title }}</a></h3>
    <p>{{ topic.description | default: "Competition math techniques" }}</p>
  </div>
{% endfor %}
{% else %}
  <div class="topic-item">
    <h3><a href="{{ '/topics/value-substitution/' | relative_url }}">Value Substitution</a></h3>
    <p>Master the art of solving complex problems in 12-30 seconds</p>
  </div>
{% endif %}
</div>

## Compendium Index

<div class="topic-list">
{% assign topic_pages = site.pages | where_exp: "page", "page.path contains 'topics/'" | where_exp: "page", "page.name == 'index.md'" | where_exp: "page", "page.url != '/topics/'" | sort: "date" | reverse %}

{% if topic_pages.size > 0 %}
{% for topic in topic_pages %}
{% assign word_count = topic.content | number_of_words %}
{% assign read_time = word_count | divided_by: 200 %}
{% if read_time == 0 %}{% assign read_time = 1 %}{% endif %}

  <div class="topic-item">
    <h3>
      <a href="{{ topic.url | relative_url }}">{{ topic.title }}</a> 
      {% if topic.popular %}<span class="badge">Popular</span>{% endif %}
    </h3>
    <p>{{ topic.description | default: "Competition math techniques" }}</p>
    <div class="read-time">⏱️ {{ read_time }} min read{% if topic.date %} • {{ topic.date | date: "%b %d, %Y at %I:%M %p" }}{% endif %}</div>
  </div>
{% endfor %}
{% else %}
  <p>No topics yet.</p>
{% endif %}
</div>

## Future Additions

<ul class="topic-list" style="display: list-item; list-style-type: none; padding: 0;">
  <li class="topic-item" style="padding: 16px 32px; margin-bottom: 12px;">Inequalities (AM-GM, Cauchy-Schwarz)</li>
  <li class="topic-item" style="padding: 16px 32px; margin-bottom: 12px;">Combinatorics & Counting</li>
  <li class="topic-item" style="padding: 16px 32px; margin-bottom: 12px;">Number Theory</li>
  <li class="topic-item" style="padding: 16px 32px; margin-bottom: 12px;">Geometry Strategies</li>
</ul>

## Participation

Want to add a topic? [Learn how to contribute →]({{ '/about/' | relative_url }})

</div>
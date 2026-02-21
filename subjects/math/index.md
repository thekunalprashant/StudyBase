---
layout: page
title: Mathematics
permalink: /subjects/math/
description: Techniques, strategies, and problem-solving patterns for competitive mathematics.
---

<div class="wrapper">

{% assign math_pages = site.pages | where_exp: "page", "page.path contains 'subjects/math/'" | where_exp: "page", "page.name == 'index.md'" | where_exp: "page", "page.url != '/subjects/math/'" %}

{% assign categories = math_pages | map: 'category' | uniq | sort %}

{% if math_pages.size > 0 %}
  {% for category in categories %}
    {% assign cat_name = category | default: "Miscellaneous" %}
    <h2>{{ cat_name }}</h2>
    
    <div class="topic-list">
      {% assign category_pages = math_pages | where: "category", category %}
      {% if category == nil %}
        {% assign category_pages = math_pages | where_exp: "page", "page.category == nil" %}
      {% endif %}
      
      {% for topic in category_pages %}
        {% assign word_count = topic.content | number_of_words %}
        {% assign read_time = word_count | divided_by: 200 %}
        {% if read_time == 0 %}{% assign read_time = 1 %}{% endif %}

        <div class="topic-item">
          <h3>
            <a href="{{ topic.url | relative_url }}">{{ topic.title }}</a>
            {% if topic.popular %}<span class="badge">Popular</span>{% endif %}
          </h3>
          <p>{{ topic.description | default: "Competition math techniques" }}</p>
          <div class="read-time">{{ read_time }} min read</div>
        </div>
      {% endfor %}
    </div>
  {% endfor %}
{% else %}
  <p>No topics yet.</p>
{% endif %}

</div>
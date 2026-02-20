---
layout: page
title: Topics
permalink: /topics/
---

Explore various competitive mathematics topics and techniques.

<ul>
  {% assign topic_pages = site.pages | where_exp: "page", "page.path contains 'topics/'" | where_exp: "page", "page.name == 'index.md'" | where_exp: "page", "page.url != '/topics/'" | sort: "title" %}
  {% for topic in topic_pages %}
    <li>
      <a href="{{ topic.url | relative_url }}">{{ topic.title | escape }}</a>
    </li>
  {% endfor %}
</ul>

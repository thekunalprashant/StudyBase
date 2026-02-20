---
layout: home
title: Math Compendium
---

# Competitive Mathematics Notes

Techniques, strategies, and problem-solving patterns for math competitions.

---

## Topics

{% assign topic_pages = site.pages | where_exp: "page", "page.path contains 'topics/'" | where_exp: "page", "page.name == 'index.md'" %}

{% for topic in topic_pages %}
{% assign word_count = topic.content | number_of_words %}
{% assign read_time = word_count | divided_by: 200 %}
{% if read_time == 0 %}{% assign read_time = 1 %}{% endif %}

### [{{ topic.title }}]({{ topic.url | relative_url }})

{{ topic.description | default: "Competition math techniques" }}

⏱️ {{ read_time }} min read

---
{% endfor %}

---

## Contribute

Found an error or want to add a topic? [Fork on GitHub](https://github.com/thekunalprashant/math-compendium/fork) and submit a pull request.
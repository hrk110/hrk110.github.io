---
layout: page
title : Tech Notes
permalink: /tech/
---


{% for category in site.categories %}
  {% if category[0] == "tech" %}
  <!-- <h3><a href="">{{ category[0] }}</a></h3> -->
  <ul>
    {% for post in category[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
  {% endif%}
{% endfor %}







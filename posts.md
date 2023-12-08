---
layout: page
title: Posts
permalink: /posts/
---

<!-- 日々考えたことを少しずつ書いていきます。
新たに知ったことがあれば書き加え、考えが変わったら書き換えます。

未熟な学生の書く一意見なのでおそらくあまり参考にはなりません。ご容赦ください。

{% for category in site.categories %}
  <h3>{{ category[0] }}</h3>
  <ul>
    {% for post in category[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %} -->
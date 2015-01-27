---
layout: page
permalink: /about/
title: Wie
tags: 
  - f1l11d31
chart: false
published: true
---

{% assign total_words = 0 %}
{% assign readtime = 0 %}
{% assign featuredcount = 0 %}
{% assign statuscount = 0 %}

{% for post in site.posts %}
    {% assign post_words = post.content | strip_html | number_of_words %}
    {% if site.wpm %}{% assign indi_readtime = post_words | append: '.0' | divided_by:site.wpm %}{% else %}{% assign indi_readtime = post_words | append: '.0' | divided_by:180 %}{% endif %}
    {% assign total_words = total_words | plus: post_words %}
    {% assign readtime = readtime | plus: indi_readtime %}
    {% if post.featured %}
    {% assign featuredcount = featuredcount | plus: 1 %}
    {% endif %}
{% endfor %}
{% for status in site.data.statuses %}{% assign statuscount = statuscount | plus:1 %}{% endfor %}

Hierdie is my persoonlike webjoernaal. Dit bestaan uit {{ site.posts | size }} inskrywings oor {{ site.categories | size }} onderwerpe wat altesaam uitwerk op {{ total_words }} woorde, wat 'n algemene leser ({{ site.wpm }} WPM) omtrent {% if readtime > 60 %}{% assign readtime_hours = readtime | divided_by: 60 %}{% assign readtime_minutes = readtime | modulo:60 %}{% if readtime_hours > 1 and readtime_hours < 2 %}1 hour{% else %}<span class="hour">{{ readtime_hours }}</span> hours{% endif %}{% if readtime_minutes < 1 %}{% elsif readtime_minutes > 1 and readtime_minutes < 1.5 %} and 1 minute {% elsif readtime_minutes > 1.5 %} and <span class="time">{{ readtime_minutes }}</span> minute{% endif %}{% else %}{% if readtime < 1 %}less than 1 minute {% elsif readtime > 1 and readtime < 1.5 %}1 minute {% elsif readtime > 1.5 %}<span class="time">{{ readtime }}</span> minute {% endif %}{% endif %} sal vat om te lees. {% if featuredcount != 0 %}Daar is <a href="{{ site.url }}/featured">{{ featuredcount }} gunstelinge inskrywings</a>, wat graag gelees moet word.{% endif %} Die nuutste inskrywing is {% for post in site.posts limit:1 %}{% if post.description %}<a href="{{ site.url }}{{ post.url }}" title="{{ post.description }}">"{{ post.title }}"</a>{% else %}<a href="{{ site.url }}{{ post.url }}" title="{{ post.description }}" title="Read more about {{ post.title }}">"{{ post.title }}"</a>{% endif %}{% endfor %} en was gepubliseer op {% for post in site.posts limit:1 %}{% assign modifiedtime = post.modified | date: "%Y%m%d" %}{% assign posttime = post.date | date: "%Y%m%d" %}<time datetime="{{ post.date | date_to_xmlschema }}" class="post-time">{{ post.date | date: "%d %b %Y" }}</time>{% if post.modified %}{% if modifiedtime != posttime %} and last modified on <time datetime="{{ post.modified | date: "%Y-%m-%d" }}" itemprop="dateModified">{{ post.modified | date: "%d %b %Y" }}</time>{% endif %}{% endif %}{% endfor %}. The laaste verandering was op {{ site.time | date: "%A, %d %b %Y" }} teen {{ site.time | date: "%I:%M %p" }} [UTC](http://en.wikipedia.org/wiki/Coordinated_Universal_Time "Temps Universel Coordonné"). Kyk gerus na die veranderings [hier]({{ site.url }}/update-log).

Huidiglik is die [statusboodskaptelling]({{ site.url }}/status-updates) {{ statuscount }}.

Hierdie webjoernaal word moontlik gemaak deur [@hmfaysal](https://twitter.com/hmfaysal) se [webjoernaal](http://hmfaysal.github.io). Sy Jekyll tema is absoluut uitstekend.

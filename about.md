---
layout: page
permalink: /oorsig/
title: Oorsig
tags: 
  - f1l11d31
  - afrikaans
category: katolisme
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

Hierdie webjoernaal dien as 'n blywende herhinnering van die Here se loop met my. Hiermee wil ek graag enigiets deel wat moontlik verrykend kan wees vir iemand anders se sielspaadjie, asook vir my toekomstige self. Ek skryf uit 'n **Rooms-Katolieke** oogpunt uit, meestal vir mede-Katolieke en ander Christene, tensy anders aangemeld.

<!-- https://www.bible.com/en-GB/bible/6/rev.12.11.afr53 -->
> Hulle het self die oorwinning oor hom behaal danksy die bloed van die Lam en die boodskap waarvan hulle getuig het; en hulle het nie hulle lewens so lief gehad dat hulle onwillig was om vir Hom te sterwe nie. &mdash; <a target="_blank" href = "http://biblehub.com/revelation/12-11.htm">Die Openbaring 12:11</a>

Die titel is in Latyns, 'n taal wat simbolies is vir die nasies, spesifiek so gekies omdat ek inskrywings in **Afrikaans** en Engels maak.

Hierdie webjoernaal word moontlik gemaak deur [@hmfaysal](https://twitter.com/hmfaysal) se [webjoernaal](http://hmfaysal.github.io). Sy Jekyll tema is absoluut uitstekend.

Ek gebruik _GitHub Pages_ vir hierdie webjoernaal. Ek sal dit sterk aanbeveel vir enigiemand wat ook so ietsie wil doen. Indien dit te tegnies raak, dan sal ek _Postach.io_ aanraai aangesien dit meer toeganklik en eenvoudig is a.g.v daardie platform se integrasie met _Evernote_ en _Dropbox_. 

Aanhalings uit die Bybel word moontlik gemaak deur _Biblia.com_, _Biblehub.com_, sowel as _Logos.com_. Die grafika op hierdie webjoernaal is meestal gevind op die internet en dan oorgeplaas na _Pinterest_, waarvandaan dit dan gebruik word.

Hierdie webjoernaal bestaan uit {{ site.posts | size }} inskrywings oor {{ site.categories | size }} [onderwerpe]({{ site.url }}{{ site.benoemde_skakels.onderwerpe }}) wat altesaam bestaan uit {{ total_words }} woorde, wat die algemene leser ({{ site.wpm }} WPM) omtrent {% if readtime > 60 %}{% assign readtime_hours = readtime | divided_by: 60 %}{% assign readtime_minutes = readtime | modulo:60 %}{% if readtime_hours > 1 and readtime_hours < 2 %}1 hour{% else %}<span class="hour">{{ readtime_hours }}</span> hours{% endif %}{% if readtime_minutes < 1 %}{% elsif readtime_minutes > 1 and readtime_minutes < 1.5 %} and 1 minute {% elsif readtime_minutes > 1.5 %} and <span class="time">{{ readtime_minutes }}</span> minute{% endif %}{% else %}{% if readtime < 1 %}less than 1 minute {% elsif readtime > 1 and readtime < 1.5 %}1 minute {% elsif readtime > 1.5 %}<span class="time">{{ readtime }}</span> minute {% endif %}{% endif %} sal vat om te lees. {% if featuredcount != 0 %}Daar is <a href="{{ site.url }}{{ site.benoemde_skakels.gunstelinge }}">{{ featuredcount }} gunstelinge inskrywings</a>, wat graag gelees moet word.{% endif %} Die nuutste inskrywing is {% for post in site.posts limit:1 %}{% if post.description %}<a href="{{ site.url }}{{ post.url }}" title="{{ post.description }}">"{{ post.title }}"</a>{% else %}<a href="{{ site.url }}{{ post.url }}" title="{{ post.description }}" title="Read more about {{ post.title }}">"{{ post.title }}"</a>{% endif %}{% endfor %} en was gepubliseer op {% for post in site.posts limit:1 %}{% assign modifiedtime = post.modified | date: "%Y%m%d" %}{% assign posttime = post.date | date: "%Y%m%d" %}<time datetime="{{ post.date | date_to_xmlschema }}" class="post-time">{{ post.date | date: "%d %b %Y" }}</time>{% if post.modified %}{% if modifiedtime != posttime %} and last modified on <time datetime="{{ post.modified | date: "%Y-%m-%d" }}" itemprop="dateModified">{{ post.modified | date: "%d %b %Y" }}</time>{% endif %}{% endif %}{% endfor %}. The laaste verandering was op {{ site.time | date: "%A, %d %b %Y" }} teen {{ site.time | date: "%I:%M %p" }} [UTC](http://en.wikipedia.org/wiki/Coordinated_Universal_Time "Temps Universel Coordonné"). Kyk gerus na die veranderings [hier]({{ site.url }}/update-log). Die [statusboodskaptelling is {{ statuscount }}]({{ site.url }}/status-updates).

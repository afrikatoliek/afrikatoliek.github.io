f1l11d31.github.io
==================

Hierdie is die woonplek van die bronkode van my webjoernaal. Dit is grotendeels moontlik gemaak deur @hmfaysal. Sien sy [webjoernaal](http://hmfaysal.github.io).

Algemene Instruksies
====================

1. Gebruik Sublime Text en installeer Package Control en Terminal 
1. Maak hierdie hele folder oop in Sublime text.
1. Druk Ctrl-Alt-Shift-T om die terminaal oop te maak op die regte plek.
1. jekyll serve --watch
1. xdg-open http://localhost:4000
1. google-chrome http://localhost:4000
1. ps aux | grep jekyll
1. kill -9 1234 (waar 1234 die PID is wat deur bogenoemde instruksie vertoon word)
1. git status
1. git log
1. git config user.name
1. git config user.email
1. git config --list
1. git add -A
1. git commit -m "Inskrywing"
1. convert cover01.jpeg -resize 200x200 -background white -gravity center -extent 1024x480 -flatten cover01_flatten.jpeg
1. convert cover01_flatten.jpeg -level -90% cover01_contrast.jpeg
1. convert cover01_flatten.jpeg -level 90% cover01_dark.jpg
1. convert cover01_flatten.jpeg +level-colors grey, cover01_light.jpeg
1. convert cover01.jpeg -resize 50% cover01_small.png
1. convert high_quality.png -quality 30 low_quality.jpg
1. convert color.png -colorspace Gray gray.png
1. convert dark.png -modulate 80 light.jpg
1. pub get
1. pub global activate grinder
1. pub global run grinder
1. pub global run grinder init
1. pub global run grinder images

Sublime Pakkette
================

1. Package Control
1. Character Table

Skakels
=======

1. http://joshualande.com/jekyll-github-pages-poole/
1. http://docs.shopify.com/themes/liquid-documentation/filters/additional-filters#date
1. http://stackoverflow.com/questions/7395520/how-does-jekyll-date-formatting-work
1. http://ogp.me/
1. http://jekyllrb.com/docs/posts/
1. http://davidensinger.com/2013/04/supporting-twitter-cards-with-jekyll/
1. http://davidensinger.com/2013/04/adding-open-graph-tags-to-jekyll/
1. http://jekyllrb.com/docs/frontmatter/
1. http://jekyllrb.com/docs/variables/#page-variables
1. http://stackoverflow.com/questions/25463865/in-jekyll-how-do-i-grab-a-posts-first-image
1. http://subtlepatterns.com/
1. https://wiki.logos.com/Biblia_Verse_of_the_Day_images
1. https://github.com/reimertz/brand-colors/blob/master/dist/latest/css/brand-colors.latest.css
1. http://designpieces.com/2012/12/social-media-colours-hex-and-rgb/
1. http://www.mobilexweb.com/blog/home-screen-web-apps-android-chrome-31
1. http://validator.w3.org/
1. http://jsfiddle.net/
1. https://dev.twitter.com/web/embedded-timelines#customization
1. https://github.com/h5bp/mobile-boilerplate
1. http://developer.android.com/guide/webapps/best-practices.html
1. https://cards-dev.twitter.com/validator
1. https://dev.twitter.com/cards/types/photo
1. http://stackoverflow.com/questions/8235687/open-graph-namespace-declaration-html-with-xmlns-or-head-prefix
1. http://biblia.com/plugins/BibleVerse
1. http://biblia.com/plugins
1. http://biblia.com/plugins/VerseOfTheDay
1. http://reftagger.com/
1. http://jekyllrb.com/docs/usage/
1. https://noembed.com/
1. http://www.quora.com/What-are-the-best-alternatives-to-Embed-ly
1. http://embed.ly/
1. http://embed.ly/embed
1. http://embed.ly/code
1. http://www.imagemagick.org/Usage/color_mods/#negate
1. https://github.com/google/grinder.dart/blob/master/tool/grind.dart
1. https://github.com/dart-lang/chromedeveditor/blob/master/ide/tool/grind.dart
1. https://github.com/google/stagehand/blob/master/tool/grind.dart
1. http://www.dartdocs.org/documentation/grinder/0.6.5/index.html#grinder/grinder

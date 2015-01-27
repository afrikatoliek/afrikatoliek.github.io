---
layout: page
permalink: /update-log/
title: "Veranderings"
description: 
modified: 2015-01-01 17:52:42 +0200
tags: []
jquery: true
---
## Hierdie bladsy lys die laaste 30 veranderinge.

<div id="github-commits"></div>

<script src="{{ site.url }}/assets/js/vendor/github.commits.widget.js"></script>

<script>
$(function() {
	$('#github-commits').githubInfoWidget(
		{ user: 'f1l11d31', repo: 'f1l11d31.github.io', branch: 'master', last: 30, limitMessageTo: 30 });
});
</script>  

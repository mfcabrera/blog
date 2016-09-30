---
layout: main
title: Miguel Cabrera's Home
description: Miguel Fernando Cabrera Weblog
---
{% include JB/setup %}

<div itemscope itemtype="http://schema.org/Person">
<h2 itemprop="name"> Miguel Cabrera</h2>

<div class="row">


<div class="span7"  id="personal" >
<ul>

  <li>I work as a <span itemprop="jobTitle">Data Engineer/Scientist</span> doing data related
  stuff for <a  href="http://www.trustyou.com" itemprop="affiliation" target="_blank">TrustYou</a>.</li>
  <li>Before that I completed a <span itemprop="jobTitle"> M.Sc. in Informatics</span> at the  <span itemprop="affiliation"><a href="http://www.tum.de"  target="_blank"> Technical Univeristy Munich</a></span> and one in Technology Management at the <a  href="http://www.cdtm.de" target="_blank">Center for Digital Technology Management</a> </li>
  <li>I founded and organized the <a href="http://www.meetup.com/Munich-Datageeks/"
  target="_blank">Munich DataGeeks</a> Meetup until end of 2014.</li>
  <li>I live in Germany and I conmmute a lot between Munich and Berlin</li>
  <li>I  have a non overly technical blog on <a href="https://medium.com/@mfcabrera">Medium</a>.</li>
  <li>From time to time I <a href="http://github.com/mfcabrera">code</a>,
  mostly in  Python.</li>
  <li>I am trying to learn how to play accordion and sometimes I
    make <a href="http://soundcloud.com/mohan-collective"
  target="_blank">music</a>.</li>

</ul>
</div>



</div>
</div>

<div class="row">
<div class="span8" id="socialicons">

  <p id="icons">
	    <!-- a href="" class="facebook" target="_blank"></a -->
    <a href="http://www.linkedin.com/in/mfcabrera" rel="me" class="linkedin" target="_blank"></a>
    <a href="http://twitter.com/mfcabrera" rel="me" class="twitter2" target="_blank"></a>
    <a href="http://github.com/mfcabrera" rel="me" class="github" target="_blank"></a>
    <a href="https://soundcloud.com/mohan-collective" rel="me" class="soundcloud" target="_blank"></a>
    <a href="mailto:mfcabrera@gmail.com" rel="me" class="googlemail"  target="_blank"></a>
    </p>
    </div>
</div>
<hr/>

## Recent Posts ##


<table class="table table-condensed" itemscope itemtype="http://schema.org/Blog">
  {% for post in site.posts limit:10%}
    <tr itemprop="blogPosts" itemscope itemtype="http://schema.org/BlogPosting" ><td><span>{{ post.date | date_to_string }}</span> &raquo; </td><td> <span itemtype="URL"> <a href="{{ BASE_PATH }}{{ post.url }}.html">{{ post.title }}</a></span></td></tr>
  {% endfor %}

</table>


<hr/>

## Latest Tweets ##

<div>
<a class="twitter-timeline"  height="600px" href="https://twitter.com/mfcabrera" data-widget-id="348406678221377536">Tweets by @mfcabrera</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
</div>

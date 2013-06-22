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
   
  <li>Currently a <span itemprop="jobTitle">graduate student (M.Sc.) in Informatics</span>
  at the  <span itemprop="affiliation"><a href="http://www.tum.de"
  target="_blank"> Technical Univeristy Munich</a></span>.</li>
  <li> I am about to obtain a Honours degree in Technology Management from the <a
  href="http://www.cdtm.de" target="_blank">Center for Digital Technology Management</a>.</li>
  <li>I work part-time as a Machine Learning Developer for <a
  href="http://www.smarchive.de" target="_blank">Smarchive</a>.</li>
  <li>From time to time I <a href="http://github.com/mfcabrera">code</a>,
  mostly in Ruby and Python.</li>
  <li>I am trying to learn how to play accordion and sometimes I
    make <a href="http://soundcloud.com/mohan-collective" target="_blank">music</a>.</li>
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
  {% for post in site.posts %}
    <tr itemprop="blogPosts" itemscope itemtype="http://schema.org/BlogPosting" ><td><span>{{ post.date | date_to_string }}</span> &raquo; </td><td> <span itemtype="URL"> <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></span></td></tr>
  {% endfor %}

</table>


<hr/>

## Latest Tweets ##

<div>
<a class="twitter-timeline"  height="600px" href="https://twitter.com/mfcabrera" data-widget-id="348406678221377536">Tweets by @mfcabrera</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
</div>



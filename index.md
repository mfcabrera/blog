---
layout: main
title: Miguel Cabrera Webpage
tagline: Nuts and Volts
---
{% include JB/setup %}

<div itemscope itemtype="http://schema.org/Person">
<h2 itemprop="name"> Miguel Cabrera</h2>

<div class="row">
    

<div class="span8"  id="personal" >
<ul>
  
  <li>Currently a <span itemprop="jobTitle">graduated student (M.Sc.) in Informatics</span>
  at the  <span itemprop="affiliation"><a href="http://www.tum.de" target="_blank"> Technical Univeristy Munich</a></span>.</li>
  
    <li>Former enterprise software developer turned Digital Alchemist.</li>
    <li>From time to time I <a href="http://github.com/mfcabrera">code</a>,
    mostly in Ruby.</li>
    <li>Currently I am trying to learn how to play accordion and sometimes I
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

  
## Recent Posts

<table class="table table-condensed" itemscope itemtype="http://schema.org/Blog">
  {% for post in site.posts %}
    <tr itemprop="blogPosts" itemscope itemtype="http://schema.org/BlogPosting" ><td><span>{{ post.date | date_to_string }}</span> &raquo; </td><td> <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></td></tr>
  {% endfor %}
</table>






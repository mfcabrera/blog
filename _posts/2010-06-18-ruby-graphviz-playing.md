---
layout: post
title: OC4J, Shared Libraries Ruby and Graphviz
author: Miguel Cabrera
category: coding
published: true
---
(all of that, in just one post)

Since July of 2010 I have been working in a insurance company called "Suramericana":http://www.suramericana.com.co. There, we have a software development department and I work as "Architecture Analyst" whatever that means. Anyway, what I do there is all the non-functional stuff that "supports" the  department software (security, messaging, environment, software development methodology, etc.).

Like many enterprises, applications are built using  Java (specifically J2EE or JEE) using "Oracle Application Server":http://www.oracle.com/technology/software/products/ias/htdocs/utilsoft.html (OC4J) and Oracle Database.  Many of these J2EE containers support what is called in java shared libraries. A library is a bunch of jars (therefore a bunch of classes), so this is a way to "elegantly" organize class loaders  defining dependencies between them and assigning them to the the required applications. In OC4J, the libraries are defined in a file called server.xml.  You can see an example "here":http://gist.github.com/444545#file_gistfile1.xml

When I got to Suramericana, there was no one was in charge for administering the shared libraries, and there was a lot of disorganization in all the enviroments causing delays in the when deploying to the test or production environment. And a lot of people asking for support to the Architecture team (my team), so we basically couldn't focus on our project because the support load was to high, and the "shared libraries dependencies issue":http://en.wikipedia.org/wiki/JAR_hell#JAR_hell  was the one of the main reasons.
So I decided to do something about it. I talked to my boss and we decided to organize the whole thing and create a process (some part are manual but that is another story) to organize the shared libraries and put them on a Subversion repository. Now, all containers have the same  shared libraries and there is a control when someone wants to modify or add a shared library. We now have almost not support regarding shared libraries use.

Well, while I was doing all this I wanted to have like a graphic representation of the shared libraries and its dependencies. I though that maybe "Graphviz":http://www.graphviz.org/ could help me doing that. As I needed to parse the XML quickly and I am Ruby fan I chose Ruby to implement it, I discovered a Ruby "gem":http://github.com/glejeune/Ruby-Graphviz that generates dot files (Graphviz file format) using Ruby as a DSL for it. So I wrote  a small script (see the end of the post) that took the xml file, parsed it, and based on the references to other libraries, created a graph.  I obtained  a cool image like:

<div class="img-center">
  <a href="/files/images/oc4j2gv.png" target="_blank">
    <img class="img-polarid" src="/files/images/oc4j2gv.png" width="621" height="183" />
  </a>

</div>

As you see above, the name of the shared libraries with the version  are the nodes and directed edges represent the dependencies. For example, we see that log4j have no dependencies and pretty much all of the other libraries depend on it.

I really liked doing this in Ruby. Ruby have powerful meta-programming capabilities and a flexible syntax  that allows a programmer to create such DSL really easily. I also discovered a small bug and sent a trivial "patch":http://github.com/glejeune/Ruby-Graphviz/commit/b2204d908a1254c2520b0cc7ae71720b93c88ae2 to fix it ;-P.

You can see the code below. Remember, I am not a Ruby expert, so comments are welcome :-)

<script src="http://gist.github.com/444545.js?file=oc4j2gv.rb"></script>

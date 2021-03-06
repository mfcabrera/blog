---
layout: post
title: N900 and Installing Maemo SDK on Ubuntu x86_64
author: Miguel Cabrera
category: personal
published: true
---

Well, this is my first post on my new blog. It have been a while since I blogged  and I really want to do it again. I think that with this new tool which is simpler and is text based I will be able to get 
more easily the thoughts out of my head.



Around mid-February I bought a [Nokia N900](http://maemo.nokia.com/) (see video below) from a local Ebay-like Web. The N900 is a Linux based "Internet Table" with phone functionality. Others prefer to call it a Linux Smartphone. In any case is a device that gives you the basic functionality of a phone plus the experience of a desktop Internet experience providing you among others things:

  * Mozilla-based web browsing with full flash support
  * Common IM platform supported integrated into one (Conversations)
  * Skype support
  * Music, Video, and Radio receiver and transmitter. 
  * Mail for exchange with Calendar sync.

And given that it is a Linux-based device, porting applications is somewhat easier,  so with minor efforts you can get Gimp, Open Office and a extra bunch of application running smoothly on this device. 

The [SDK](http://www.forum.nokia.com/info/sw.nokia.com/id/c05693a1-265c-4c7f-a389-fc227db4c465/Maemo_5_SDK.html) for this device is free of charge and the supported Languages are C,C++ and Python. I would have liked support for Java, Ruby and Mono. I thing the lack of support of Java is one the grey spot of this device. 

<object width="560" height="340"><param name="movie" value="http://www.youtube.com/v/kYnx0PUX7Do&hl=es_ES&fs=1&rel=0&color1=0x006699&color2=0x54abd6"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/kYnx0PUX7Do&hl=es_ES&fs=1&rel=0&color1=0x006699&color2=0x54abd6" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="560" height="340"></embed></object>


In  general I am happy with the device. It pretty much fulfill all my expectations, however here some things I believe could be improved:

 * More applications: The lack of commercial application could hurt badly this device. 
 * Battery life: Life duration really suck. I will have to get an extra battery.
 * More documentation and support for developers.
 * Support for multiple accounts in mail for exchange.

 

####  Installing the SDK on Ubuntu x86_64 ####

I am planning to code some application for this device (while learning some Python) so I decided to install the sdk on my Ubuntu 9.10 box. I ran into problem using the GUI installer that is related to the _vdso32_ kernel option. In order to install the ["Maemo 5 SDk"](http://www.forum.nokia.com/info/sw.nokia.com/id/c05693a1-265c-4c7f-a389-fc227db4c465/Maemo_5_SDK.html) you should put "vdso32=0" in your kernel command line. As it is common in Ubuntu, wich each realease a lot of stuff changes so I couldn't find where to put this option. But doing it could be more easy. Look for the file /etc/default/grub and append "vdso32=0" to the  GRUB_CMDLINE_LINUX variable. Mine looks something like this:

    bc. # /boot/grub/grub.cfg.
    GRUB_DEFAULT=0
    #GRUB_HIDDEN_TIMEOUT=0
    GRUB_HIDDEN_TIMEOUT_QUIET=true
    GRUB_TIMEOUT=10
    GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
    GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
    GRUB_CMDLINE_LINUX="vdso32=0"
    (...)


After that reboot and the installation is just a matter of clicking "next" :-).



Introduction:
============

Thanks to warloo on irc.freenode.net in #xml , this made my day, so I share it back.
Enjoy the crude shell adapation.


Install:
=======

make install


Example / Usage:
===============

~/dev/xpathfind p$ ./xpathfind Development examples/www.freenode.net.xml
/html[1]/body[1]/div[2]/div[1]/ul[1]/li[5]/a[1]
~/dev/xpathfind p$
~/dev/xpathfind p$
~/dev/xpathfind p$
~/dev/xpathfind p$ xmlstarlet sel -T -t -m '/html[1]/body[1]/div[2]/div[1]/ul[1]/li[5]/a[1]' -v '.' -n examples/www.freenode.net.xml
Development
~/dev/xpathfind p$

Works also with spaces:

~/dev/xpathfind p$ ./xpathfind "Balsamiq Mockups" examples/Balsamiq\ Mockups.app\ Contents\ Resources\ META-INF\ AIR\ application.xml
/application[1]/filename[1]
/application[1]/name[1]
/application[1]/initialWindow[1]/title[1]
/application[1]/fileTypes[1]/fileType[1]/description[1]
~/dev/xpathfind p$


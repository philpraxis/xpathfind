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


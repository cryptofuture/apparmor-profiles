###### Apparmor Profiles Collection
*I wanted to publish apparmor profiles I use, long time ago. But was scared it will decrease security level for me.
Most profiles you can find here are default Ubuntu apparmor profiles. Some are modified profiles, and some based on another 3-rd party profiles and some created from scratch.
I want this repository to became a place where people can share there own profiles and link profiles from another sources here too.
Basically, some profiles needs modifications for your needs. I want this repository to became a good place to start, when you creating profile for yourself.  
Its much easier when you have another profile to base on. Most profiles use abstractions here, and this makes profiles writing even easier.  
__Pull requests, are welcome here! Let's make apparmor profiles creation easier together. Its time to take back control on things in your own hands!__*

### Profiles status
#### Default profiles
> Most profile here are default profiles from Ubuntu. Possibly should work without a problem in most installations, but could be not enough restricted.

* bin.ping 	
* lightdm-guest-session
* lxc-containers
* sbin.dhclient
* sbin.klogd
* sbin.syslog-ng
* sbin.syslogd
* usr.bin.chromium-browser, modified for android WebView debug support.
* usr.bin.i2prouter
* usr.bin.lxc-start
* usr.lib.dovecot.anvil
* usr.lib.dovecot.config
* usr.lib.dovecot.deliver
* usr.lib.dovecot.dict
* usr.lib.dovecot.dovecot-auth
* usr.lib.dovecot.dovecot-lda
* usr.lib.dovecot.imap 	
* usr.lib.dovecot.imap-login 	
* usr.lib.dovecot.lmtp 	
* usr.lib.dovecot.managesieve
* usr.lib.dovecot.managesieve-login
* usr.lib.dovecot.pop3 	
* usr.lib.dovecot.pop3-login 	
* usr.lib.dovecot.ssl-params 	
* usr.lib.libvirt.virt-aa-helper 
* usr.lib.lxd.lxd-bridge-proxy
* usr.lib.telepathy 	
* usr.sbin.avahi-daemon 	
* usr.sbin.dnsmasq, modified for lxd network api support.
* usr.sbin.dovecot 	
* usr.sbin.haveged, you need to add apparmor.service to haveged systemd unit to use this profile. Just like that:
```
After=systemd-random-seed.service apparmor.service
```
* usr.sbin.identd 	
* usr.sbin.libvirtd 	
* usr.sbin.mdnsd 
* usr.sbin.nmbd 	
* usr.sbin.nscd
* usr.sbin.rsyslogd 	
* usr.sbin.smbd 	
* usr.sbin.smbldap-useradd 	
* usr.sbin.tcpdump 	
* usr.sbin.traceroute 
* usr.sbin.wrapper


#### Active profiles
> Well tested profiles, I use mostly every day.

* [system_tor](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/system_tor)
* [usr.bin.firefox](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.bin.firefox) and [usr.bin.firefox-trunk](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.bin.firefox-trunk)
* [usr.bin.pidgin](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.bin.pidgin)
* [usr.bin.steam](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.bin.steam), you need to tweak username and steam library location, before use in your own environment. This profile support steam controller. And better use steam under separated user anyway, since most games like to store saves in `~/Documents`, or in own separated folders in `~` and your `~/.config` and `~/.local` folders will be recycled with different games data. What I talking about is that private files abstractions don't play well with steam, and better use separated user with slightly modified abstraction.
* [usr.sbin.privoxy](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.sbin.privoxy)
* [usr.bin.mupdf](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.bin.mupdf)

#### Inactive profiles
> Currectly inactive profiles. Could be fixed with slight fixes.

* [opt.teamviewer9.tv_bin.script.teamviewer](https://github.com/cryptofuture/apparmor-profiles/blob/raw/apparmor.d/opt.teamviewer9.tv_bin.script.teamviewer), teamviewer installed, from archive in /opt/, version bundled with wine. Version from deb/rpm profiles includes service, started with root rights, and I don't recommend it. Teamviewer work fine when you admin remote hoste, but will crash it, if someone try to connect to you. Possibly needs only slight modification, for new versions.
* [usr.bin.jitsi](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.bin.jitsi), outdated
* [usr.bin.odeskteam-qt4](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.bin.odeskteam-qt4), client dropped
* [usr.bin.skype](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.bin.skype), outdated. You need to run it in separated X session also, most likely. For example with xephyr or xpra. 
* [usr.bin.wuala](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.bin.wuala), client dropped
* [usr.bin.vlc](https://github.com/cryptofuture/apparmor-profiles/blob/master/apparmor.d/usr.bin.vlc), outdated. Possibly needs slight modification. Based on profile from [insanitybit.com](http://www.insanitybit.com/).

#### Possibly broken profiles
> Broken profiles, not easy to fix.

* [usr.bin.FoxitReader](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.bin.FoxitReader), should work fine with 1.1 version under old distros(for example with Ubuntu 14.04.x and 12.04.x). Broken with new FoxitReader versions and on newer distros.
* [usr.bin.SpiderOak](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.bin.SpiderOak) outdated, needs modification or rewriting.
* [usr.bin.VirtualBox](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.bin.VirtualBox), works fine, but you need to disable it, on VB update, or when you installing extensions. Possibly will be outdated soon, since I didn't use VB. Based on profile from [insanitybit.com](http://www.insanitybit.com/).
* [usr.bin.wine](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.bin.wine), totally broken.
* [usr.bin.obfsproxy](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.bin.obfsproxy), broken. Inside [tor abstraction](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/abstractions/tor) currently.
* [usr.bin.zuluCrypt-gui](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/usr.bin.zuluCrypt-gui), broken. Not interested in fixing it.
* [usr.share.smartgit.bin.smartgit.sh](https://github.com/cryptofuture/apparmor-profiles/blob/master/apparmor.d/usr.share.smartgit.bin.smartgit.sh), broken. Just like pure git more. But I think it could be fixed with some modification.

### Profile installation
You need to copy profile you need to use to `/etc/apparmor.d/`, check it for abstractions, and copy abstractions if you need it, possibly slight tweak profile for you needs and you good to go.

```
aa-enforce /etc/apparmor.d/usr.bin.profilenameyourneed 
```

### Searching for more apparmor profiles
Basically some software in Ubuntu includes apparmor profiles, and its enough to just install it and activate profile after.  
* Ubuntu apparmor-profiles [bazaar branch](https://bazaar.launchpad.net/~apparmor-dev/apparmor-profiles/master/files/head:/ubuntu/)
* [thesimplecomputer.info](http://thesimplecomputer.info/apparmor/)
* [insanitybit.com](http://www.insanitybit.com/) was popular resource for apparmor profiles back in days
* [simondeziel/aa-profiles](https://github.com/simondeziel/aa-profiles)
* [Falcon-peregrinus/apparmor-profiles] (https://github.com/Falcon-peregrinus/apparmor-profiles)
* [mk-fg/apparmor-profiles] (https://github.com/mk-fg/apparmor-profiles)
* [Harvie/AppArmor-Profiles](https://github.com/Harvie/AppArmor-Profiles)
* [CameronNemo/apparmor-elementary](https://github.com/CameronNemo/apparmor-elementary)
* And more profiles [on GitHub](https://github.com/search?utf8=%E2%9C%93&q=apparmor+profile)

### About abstractions and private-files
With abstractions help you could make profiles faster and clear. For example for Xorg application you need [X abstraction](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/abstractions/X) and profile for java application, could be real pain without [java abstraction](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/abstractions/ubuntu-browsers.d/java).  
Check abstraction [here](https://github.com/cryptofuture/apparmor-profiles/tree/master/apparmor.d/abstractions).  
Alongside with software abstractions there are [private files abstraction](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/abstractions/private-files) to disable access to non quite restricted software, and to disable really sensative parts.    
Also, you may find very useful user write/read abstraction to easy specify access to media and mount points and tmp for user.  
For example:  
* [user-download](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/abstractions/user-download)
* [user-tmp](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/abstractions/user-tmp)
* [user-tmp-steam](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/abstractions/user-tmp-steam)
* [user-write](https://github.com/cryptofuture/apparmor-profiles/raw/master/apparmor.d/abstractions/user-write)

### Near future plans for this repository
Import well made profiles from upstream and another sources to this repository. Most likely from apparmor-profiles [bazaar branch](https://bazaar.launchpad.net/~apparmor-dev/apparmor-profiles/master/files/head:/ubuntu/) first.
As always, pull requests are welcome here!




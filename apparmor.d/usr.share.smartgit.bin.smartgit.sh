# Last Modified: Sat May 31 03:52:29 2014
#include <tunables/global>

/usr/share/smartgit/bin/smartgit.sh {
  #include <abstractions/base>
  #include <abstractions/bash>
  #include <abstractions/private-files-smartgit>
  #include <abstractions/ubuntu-browsers.d/java3>
  #/usr/bin/dpkg-query rix,
  #/var/lib/dpkg/status r,
  /usr/bin/lsb_release rix,
  /usr/bin/dirname rix,
  /usr/bin/tr rix,
  /usr/bin/cut rix,
  /usr/bin/mawk rix,
  /bin/bash rix,
  /bin/dash rix,
  /bin/grep rix,
  /bin/which rix,
  /dev/tty rw,
  /etc/java-7-openjdk/* r,
  /etc/java-8-openjdk/* r,
  /etc/lsb-release r,
  /etc/python2.7/sitecustomize.py r,
  /usr/share/pyshared/**.{pyc,py,so} mrw,
  /usr/lib{,32,64}/python{2,3}.[34567]/**.{pyc,py,so} mrw,
  /proc/meminfo r,
  /usr/bin/cut r,
  /usr/bin/dirname r,
  /usr/bin/lsb_release r,
  /usr/bin/python2.7 rix,
  /usr/bin/tr r,
  /usr/include/python2.7/pyconfig.h r,
  /usr/local/lib/python2.7/dist-packages/ r,
  /usr/share/pyshared/apport_python_hook.py r,
  /usr/share/pyshared/gtk-2.0-pysupport-compat.pth r,
  /usr/share/pyshared/lazr.restfulclient-0.12.0-nspkg.pth r,
  /usr/share/pyshared/lazr.uri-1.0.3-nspkg.pth r,
  /usr/share/pyshared/lsb_release.py r,
  /usr/share/pyshared/pygtk.pth r,
  /usr/share/pyshared/setuptools.pth r,
  /usr/share/pyshared/zope.interface-3.6.1-nspkg.pth r,
  /usr/share/smartgit/bin/smartgit.sh r,
  /usr/share/smartgit/lib/bootloader.jar r,

}

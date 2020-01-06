#!/bin/bash
#
# About: Remove Orb
# Author: liberodark,fwhcat
# License: GNU GPLv3

#=================================================
# CHECK ROOT
#=================================================

if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

#/opt
rm -rf /opt/orb/

#/usr/bin
rm -f /usr/bin/orb
rm -f /usr/bin/orb-check-signature
rm -f /usr/bin/orb-check-updates
rm -f /usr/bin/orb-check-whitelist
rm -f /usr/bin/orb-config
rm -f /usr/bin/orb-launcher
rm -f /usr/bin/orb-root
rm -f /usr/bin/orb-thumbnailer
rm -f /usr/bin/orb_tools.tar.gz

#/usr/share/
rm -f /usr/share/applications/ORB\ Launcher.desktop
rm -f /usr/share/polkit-1/actions/orb.policy
rm -f /usr/share/mime/packages/orb.thumbnailer
rm -rf /usr/share/icons/oxygen
rm -rf /usr/share/icons/orb
rm -f /usr/share/icons/gnome/8x8/mimetypes/gnome-mime-application-x-orb.png
rm -f /usr/share/icons/gnome/16x16/mimetypes/gnome-mime-application-x-orb.png
rm -f /usr/share/icons/gnome/22x22/mimetypes/gnome-mime-application-x-orb.png
rm -f /usr/share/icons/gnome/24x24/mimetypes/gnome-mime-application-x-orb.png
rm -f /usr/share/icons/gnome/32x32/mimetypes/gnome-mime-application-x-orb.png
rm -f /usr/share/icons/gnome/128x128/mimetypes/gnome-mime-application-x-orb.png
rm -f /usr/share/icons/gnome/256x256/mimetypes/gnome-mime-application-x-orb.png
rm -f /usr/share/icons/gnome/512x512/mimetypes/gnome-mime-application-x-orb.png
rm -f /usr/share/mime/packages/orb.xml

#/var
rm -rf /var/cache/orbital-apps

#/tmp
rm -f /tmp/tmpaddon /tmp/orb_icons_root

#/root
rm -rf /root/.icons
rm -f /root/.mtab.fuseiso

#fix to root:root
chown root:root /usr /usr/share /usr/share/thumbnailers /usr/share/applications /usr/share/polkit-1 /usr/share/polkit-1/actions /usr/share/icons /usr/share/icons/gnome /usr/share/mime /usr/share/mime/packages /usr/bin /opt /var/cache /var

#fix permissions 755
chmod 755 /usr /usr/share /usr/share/thumbnailers /usr/share/applications /usr/share/polkit-1 /usr/share/polkit-1/actions /usr/share/icons /usr/share/icons/gnome /usr/share/mime /usr/share/mime/packages /usr/bin /opt /var/cache /var

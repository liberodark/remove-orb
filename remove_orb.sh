#/opt
rm -r /opt/orb/

#/usr/bin
rm /usr/bin/orb
rm /usr/bin/orb-check-signature
rm /usr/bin/orb-check-updates
rm /usr/bin/orb-check-whitelist
rm /usr/bin/orb-config
rm /usr/bin/orb-launcher
rm /usr/bin/orb-root
rm /usr/bin/orb-thumbnailer
rm /usr/bin/orb_tools.tar.gz

#/usr/share/
rm /usr/share/applications/ORB\ Launcher.desktop
rm /usr/share/polkit-1/actions/orb.policy
rm /usr/share/mime/packages/orb.thumbnailer
rm -r /usr/share/icons/oxygen
rm -r /usr/share/icons/orb
rm /usr/share/icons/gnome/8x8/mimetypes/gnome-mime-application-x-orb.png
rm /usr/share/icons/gnome/16x16/mimetypes/gnome-mime-application-x-orb.png
rm /usr/share/icons/gnome/22x22/mimetypes/gnome-mime-application-x-orb.png
rm /usr/share/icons/gnome/24x24/mimetypes/gnome-mime-application-x-orb.png
rm /usr/share/icons/gnome/32x32/mimetypes/gnome-mime-application-x-orb.png
rm /usr/share/icons/gnome/128x128/mimetypes/gnome-mime-application-x-orb.png
rm /usr/share/icons/gnome/256x256/mimetypes/gnome-mime-application-x-orb.png
rm /usr/share/icons/gnome/512x512/mimetypes/gnome-mime-application-x-orb.png
rm /usr/share/mime/packages/orb.xml

#/var
rm -r /var/cache/orbital-apps

#/tmp
rm /tmp/tmpaddon /tmp/orb_icons_root

#/root
rm -r /root/.icons
rm /root/.mtab.fuseiso

#fix to root:root
chown root:root /usr /usr/share /usr/share/thumbnailers /usr/share/applications /usr/share/polkit-1 /usr/share/polkit-1/actions /usr/share/icons /usr/share/icons/gnome /usr/share/mime /usr/share/mime/packages /usr/bin /opt /var/cache /var

#fix permissions 755
chmod 755 /usr /usr/share /usr/share/thumbnailers /usr/share/applications /usr/share/polkit-1 /usr/share/polkit-1/actions /usr/share/icons /usr/share/icons/gnome /usr/share/mime /usr/share/mime/packages /usr/bin /opt /var/cache /var

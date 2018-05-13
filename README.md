# What is remove-orb

This is a script to uninstall orbital-app that doesn't come with a uninstaller
and will mess your filesystem permissions.

# Why does it mess my system?

No idea, it will change some important files/folders,
owner/group and also permissions to it...

Then, you cannot shutdown your computer, you can't start any process that will use polkit to require further auth, (example gparted),
you cannot reboot anymore because your login manager will fail to launch.

# Errors

`systemctl status polkit.service`

`polkitd[27310]: Error opening rules directory: Error opening directory '/etc/polkit-1/rules.d': Permission denied (g-file-error-quark, 2)`

# How to fix

As root:

```
wget https://raw.githubusercontent.com/liberodark/remove-orb/remove_orb.sh
sh remove_orb.sh
```

---
title: "Limit access to the terminal to certain user (Ubuntu 22.04)"
tags:
- Linux
- GNOME
---

Ubuntu is a [[3-sysnet/1-linux/Linux-MoC|Linux]] distribution.
This is a continuation to [[3-sysnet/1-linux/Remove access to the terminal to certain user (Ubuntu 22.04)|Remove access to the terminal to certain user (Ubuntu 22.04)]]]
This however works on any distro running GNOME enviroment.

## Install dconf-editor

```shell
sudo apt-get install dconf-editor
```

This will allow us to edit the shortcut keybinds of GNOME on a low level safely.

## Edit via dconf gui

* Open the program
* Go to: `/org/gnome/settings-daemon/plugins/media-keys/terminal`
* Click on use default to turn it off 
* Leave only the brackets in the custom value `[]`
* Apply settings

### Screenshot

![](https://res.cloudinary.com/dgfrzh1nl/image/upload/f_auto/v1690589316/obsidian/cbos1rytcumri6od2616.png)


## Log in and out

This step makes the changes take effect for the user.

## Explanation

More about dconf and gnome: https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/using_the_desktop_environment_in_rhel_8/configuring-gnome-at-low-level_using-the-desktop-environment-in-rhel-8

More about gnome keybinds https://github.com/Skycoder42/QHotkey/issues/35

## Source:

https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/using_the_desktop_environment_in_rhel_8/configuring-gnome-at-low-level_using-the-desktop-environment-in-rhel-8
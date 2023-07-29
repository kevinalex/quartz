---
title: "Disable App Menu in Ubuntu 22.04"
tags:
- Linux
- Ubuntu
---

Ubuntu is a [[3-sysnet/1-linux/Linux-MoC|Linux]] distribution.

## Use the command

```bash
gsettings set org.gnome.shell.extensions.dash-to-dock show-show-apps-button false
```

## Explanation

1. `gsettings`: This is the command-line tool used in Ubuntu (and other GNOME-based systems) to interact with the Dconf settings database. Dconf is a configuration system used to store settings for the GNOME desktop environment.
    
2. `set`: This is the sub-command of `gsettings` that tells it to set a new value for a specified key in the Dconf settings database.
    
3. `org.gnome.shell.extensions.dash-to-dock`: This is the schema or path in the Dconf database where the setting is located. In this case, it refers to the settings related to the Dash to Dock GNOME Shell extension, which is used to customize the behavior of the dock (application launcher) in GNOME.
    
4. `show-show-apps-button`: This is the specific key or setting within the `org.gnome.shell.extensions.dash-to-dock` schema that we want to modify. It controls the visibility of the "Show Applications" button on the dock. Setting it to `false` means the button will be hidden.
    
5. `false`: This is the value we want to set for the `show-show-apps-button` key. Setting it to `false` will hide the "Show Applications" button on the dock.
    

So, when you run the `gsettings set org.gnome.shell.extensions.dash-to-dock show-show-apps-button false` command, you are telling Ubuntu to modify the Dash to Dock extension's settings to hide the "Show Applications" button on the dock. This is useful if you prefer a minimalistic dock without the "Show Applications" button cluttering the interface.


## Log in and out

This step makes the changes take effect for the user.

## Source:

Explanation: Chat GPT v-3.5
Command: [https://entreunosyceros.net/mostrar-aplicaciones-eliminar-el-icono-del-dock-ubuntu/amp/](https://entreunosyceros.net/mostrar-aplicaciones-eliminar-el-icono-del-dock-ubuntu/amp/ "https://entreunosyceros.net/mostrar-aplicaciones-eliminar-el-icono-del-dock-ubuntu/amp/") 



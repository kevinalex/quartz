---
title: "Remove access to the terminal to certain user (Ubuntu 22.04)"
tags:
- Linux
- Ubuntu
---

Ubuntu is a [[3-sysnet/1-linux/Linux-MoC|Linux]] distribution.

## Use the command

```bash
sudo usermod --shell /bin/false username
```

## Explanation

* `sudo`: execute a command as another user
* `usermod`: modify a user account
* `--shell /bin/false ` :The name of the user's new login shell.
* `username`: The username we want to modify

## Log in and out

This step makes the changes take effect for the user.

## Important! 

If you want to remove access via shortcuts as well, read [[3-sysnet/1-linux/Remove or edit access to the terminal via ctrl+alt+t command (GNOME)|Remove or edit access to the terminal via ctrl+alt+t command (GNOME)]].

## Source:

Chat GPT v-3.5
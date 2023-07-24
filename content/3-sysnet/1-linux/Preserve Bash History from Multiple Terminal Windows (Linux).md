---
title: "Preserve Bash History from Multiple Terminal Windows (Linux)"
tags:
- linux/QoL
---


*"In this tutorial, we studied ways to preserve Bash _history_ in multiple terminal windows on [[3-sysnet/1-linux/Linux - MoC|Linux - MoC]] .*

*In the beginning, we discussed the _history_ feature of the Bash shell and its default behavior. Next, we discussed the approach and solutions to our problem statement. Finally, we also offered a way to create a separate history file for each session."*

## Commands:

Access the .bashrc configuration file

```shell
sudo nano ~/.bashrc
```

Then inside that file we add:

```shell
HISTCONTROL=ignoredups:erasedups
shopt -s histappend
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'n'}history -a; history -c; history -r"
```

## Reboot or Reload Terminal Config.

We save the file and then we restart the system or do source __*~/.bashrc*__ to load configurations.

## Source

Source: https://www.baeldung.com/linux/preserve-history-multiple-windows
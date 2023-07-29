---
title: "Change display name of a user (ubuntu)"
tags:
- linux
- ubuntu
---
Ubuntu is a [[3-sysnet/1-linux/Linux-MoC|Linux]] distribution

## Sudo Command

```bash
sudo usermod -c "New Display Name" username
```

## Explanation

1. `usermod`: This is the main command. It stands for "user modification." It is used to modify the attributes and settings of a user account on the system.
    
2. `-c`: This is an option or flag that comes after the `usermod` command. The `-c` option allows you to specify the new comment (or display name) for the user. The comment is typically used to store additional information about the user, such as their full name.
    
3. `"New Display Name"`: This is the value you provide after the `-c` option. It is the new display name that you want to set for the user. The display name is the name that is shown when the user logs in or is displayed in the system settings.
    
4. `username`: This is the argument or parameter that comes after the display name value. It is the username of the user account you want to modify. Replace `username` with the actual username of the user you want to change.

## Source

Chat gpt v-3.5
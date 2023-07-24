---
title: "Accessing a self-hosted website from the local network (hairpin)"
tags:
- network
---


## Explanation:

In this case we are trying to redirect a website request, to a machine in the local [[3-sysnet/2-network/Network-MoC|Network]] which hosts the website over the local network accesible through its domain name.

In other words what we are trying to do is access the website using the domain name (`www.webiste.com`)  from any device within the same network that is hosting the website, that's why we need the redirect to happen at the firewall/router level.

## What is a hairpin?

> _"Hairpinning, in a networking context, is **the method where a packet travels to an interface, goes out towards the internet but instead of continuing on, makes a “hairpin turn”**—just think of the everyday instrument used to hold a person's hair in place—and comes back in on the same interface._"

\- Source: https://www.netskope.com/blog/hairpinning-the-dirty-little-secret-of-most-cloud-security-vendors

## Use case diagram

The diagram is as follows:

![](https://res.cloudinary.com/dgfrzh1nl/image/upload/f_auto/v1690140443/obsidian/kztxzp4wy9zj7myqxp6f.jpg)


## Solution

Depending on the server configuration/interfaces available we will need to configure them to point the dns request to the ip address of the internal server like so:

![](https://res.cloudinary.com/dgfrzh1nl/image/upload/f_auto/v1690141527/obsidian/zwbmxqoaiiv7bbmzhgez.jpg)

## Final Thoughts 

As you may see, we redirect the dns request to the same domain name because that's the way that our internal server knows which website is the client trying to access. Otherwise if we used the internal server's local ip directly (192.168.1.98) instead of the domain name (`www.website.com`) we would get redirected to the external ip, the wrong website inside the internal server or it may not be able to answer the request at all.


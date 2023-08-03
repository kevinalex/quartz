---
title: "Build and Install PHP 8.0 for Ubuntu 18.04"
tags:
- linux
- ubuntu
- php
---

This is an annex to this article:
https://computingforgeeks.com/install-php-8-7-on-ubuntu-18-bionic-beaver/?expand_article=1

Mirror:
https://web.archive.org/web/20230802211119/https://computingforgeeks.com/install-php-8-7-on-ubuntu-18-bionic-beaver/?expand_article=1

The article is a guide on how to install PHP 8.0 on Ubuntu 18.04 a [[3-sysnet/1-linux/Linux-MoC|Linux]] distribution.

The following is a modification of the source material so you can make the installation ready for a wordpress website on apache2.

## Installing dependency packages

```bash
sudo apt-get update
```

```bash
sudo apt-get install build-essential libssl-dev libcurl4-openssl-dev libxml2-dev libjpeg-dev libpng-dev libfreetype6-dev libzip-dev
```
 if libzip4 dependencies unmet error do:

```shell
sudo apt-get install ppa-purge
```

```shell
sudo ppa-purge ppa:ondrej/php
```

this removes the faulty repo, then purge the libzip4 installed previously (this may break other wordpress/php installations on your system)

```shell
sudo apt remove libzip4
```

```shell
sudo apt-get install libzip-dev
```

then run again 

```bash
sudo apt-get install build-essential libssl-dev libcurl4-openssl-dev libxml2-dev libjpeg-dev libpng-dev libfreetype6-dev libzip-dev
```

## ./configure command

I modified the command to use the correct modules and features from php to run a wordpress server with apache2 on an Ubuntu 18.04 based distro. 
```bash

./configure \
--prefix=/usr/local/php80 \
--with-apxs2=/usr/local/apache2/bin/apxs \
--with-config-file-path=/etc/php/8.0/apache2 \
--enable-fpm \
--with-fpm-user=www-data \
--with-fpm-group=www-data \
--with-mysqli \
--with-pdo-mysql \
--with-openssl \
--with-curl \
--with-zlib \
--with-gd \
--with-jpeg \
--with-freetype \
--with-xmlrpc \
--with-iconv \
--enable-bcmath \
--enable-mbstring \
--enable-gd \
--enable-zip \
--enable-xml \
--enable-json \
--enable-exif \
--enable-intl \
--enable-opcache \
--enable-sockets \
--enable-soap \
--disable-cgi

```

### Sample output

```
+--------------------------------------------------------------------+
| License:                                                           |
| This software is subject to the PHP License, available in this     |
| distribution in the file LICENSE. By continuing this installation  |
| process, you are bound by the terms of this license agreement.     |
| If you do not agree with the terms of this license, you must abort |
| the installation process at this point.                            |
+--------------------------------------------------------------------+

Thank you for using PHP.
```


If it throws a warning, its probably because some of these are already enabled by default in recent PHP versions.

Note !!! Remember to do `phpenmod zip` for example for any modules not active by default.

### Command Explanation

Explanation of some key options:

- `--prefix`: Specifies the installation directory for PHP.
- `--with-apxs2`: Points to the Apache `apxs2` tool for building PHP as an Apache module.
- `--with-config-file-path`: Specifies the path to the PHP configuration file used by Apache.
- `--enable-fpm`: Enables PHP-FPM.
- `--with-fpm-user` and `--with-fpm-group`: Specifies the user and group for PHP-FPM.
- `--with-mysqli` and `--with-pdo-mysql`: Enable MySQL support for PHP.
- `--with-openssl`: Enables OpenSSL support.
- `--with-curl`: Enables cURL support for remote data fetching.
- `--with-zlib`: Enables zlib compression support.
- `--with-gd`, `--with-jpeg`, `--with-freetype`: Enables GD image library support.
- `--with-xmlrpc`: Enables XML-RPC support.
- `--with-iconv`: Enables iconv support for character encoding conversion.
- `--enable-bcmath`, `--enable-mbstring`, `--enable-gd`, `--enable-zip`, `--enable-xml`, `--enable-json`, `--enable-exif`, `--enable-intl`, `--enable-opcache`, `--enable-sockets`, `--enable-soap`: Enable various PHP extensions commonly used by WordPress.
- `--disable-cgi`: Disables CGI mode.

Please note that this list is a general guideline, and your specific requirements might vary based on your WordPress theme, plugins, and server setup. Always refer to the official PHP documentation and test thoroughly after making changes.


## Final Thoughts

After this you can resume the guide at the beginning, just have in mind our installation path is different, for example instead of doing
```
"export PATH=\$PATH:/opt/php/php8/bin"
```

we do 

```
export PATH=\$PATH:/usr/local/php80/bin"
```

Also have in mind you might want to remove the old php installation like this

```
sudo apt purge php7.0*
```

For my case use, my php-fpm config files are in 

```
/usr/local/php80/etc
```

And I'm using Apache2.

## Source for the commands and explanation:
Chat GPT-3.5 
https://www.php.net/manual/en/install.unix.apache2.php

Other sources, read
https://www.gulshankumar.net/install-wordpress-with-lamp/
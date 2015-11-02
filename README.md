# adite/apache_php
---
## Apache + PHP
![tescom](https://en.gravatar.com/userimage/96759029/aa4308f795041de37cc2fedf0d1071ca?size=128)
---
## IMAGE FROM
adite/base    

## Version 
* Apache 2.4.7 and modules with...  
 * mod_rewrite
 * mod_php5
 * mod_vhost_alias
 * mod_headers
 * mod_ssl

* PHP 5.5.9 and extensions with
 * apcu
 * curl
 * gd
 * mcrypt
 * mysql
 * intl
 * json
 * sqlite
 * mongo
 * ssh2
 * xsl
   
## Volume Information
```shell
/var/www
/etc/apache2/sites-enabled
```
   

## USAGE
---
### Start new container
```shell
$ sudo docker run -p ${your_port}:80 -v ${your_share_directory}:/var/www adite/apache_php
```
---
### Start with custom configuration
```shell
$ sudo docker run -p ${your_port}:80 -v ${your_vhost_conf_directory}:/etc/apache2/sites-enabled \
                  -v ${your_share_directory}:/var/www adite/apache_php
```
---

#!/usr/bin/bash



#
yum -y remove MariaDB-shared
yum -y remove MariaDB-common

# Transaction check error: package mariadb-libs
yum -y remove mariadb-libs

#
yum -y install mariadb mariadb-server MySQL-python
yum -y install mariadb mariadb-server python2-PyMySQL



mysql -u root -p

CREATE DATABASE keystone;
GRANT ALL PRIVILEGES ON keystone.* TO 'keystone'@'localhost' IDENTIFIED BY 'KEYSTONE_DBPASS';
GRANT ALL PRIVILEGES ON keystone.* TO 'keystone'@'%' IDENTIFIED BY 'KEYSTONE_DBPASS';
  
  
  
  
yum -y install openstack-keystone httpd mod_wsgi
  
  
  
  
  
  
  
  

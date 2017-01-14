#!/usr/bin/bash



#
yum remove -y MariaDB-shared
yum remove -y MariaDB-common

#
yum -y install mariadb mariadb-server MySQL-python
yum -y install mariadb mariadb-server python2-PyMySQL



mysql -u root -p

CREATE DATABASE keystone;
GRANT ALL PRIVILEGES ON keystone.* TO 'keystone'@'localhost' IDENTIFIED BY 'KEYSTONE_DBPASS';
GRANT ALL PRIVILEGES ON keystone.* TO 'keystone'@'%' IDENTIFIED BY 'KEYSTONE_DBPASS';
  
  
  
  
yum -y install openstack-keystone httpd mod_wsgi
  
  
  
  
  
  
  
  

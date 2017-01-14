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

CREATE DATABASE keystone default character set utf8;
GRANT ALL PRIVILEGES ON keystone.* TO 'keystone'@'localhost' IDENTIFIED BY 'KEYSTONE_DBPASS' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON keystone.* TO 'keystone'@'%' IDENTIFIED BY 'KEYSTONE_DBPASS' WITH GRANT OPTION;
FLUSH PRIVILEGES;



  
  
yum -y install openstack-keystone httpd mod_wsgi
  
  
  
  
  
  
  
  

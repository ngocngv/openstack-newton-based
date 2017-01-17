#!/bin/bash


GLANCE_PASS=admin



# Create DB
#---------------------------------------------------------------------------------

mysql -u root -p

CREATE DATABASE glance;
GRANT ALL PRIVILEGES ON glance.* TO 'glance'@'localhost' IDENTIFIED BY 'GLANCE_DBPASS';
GRANT ALL PRIVILEGES ON glance.* TO 'glance'@'%' IDENTIFIED BY 'GLANCE_DBPASS';
FLUSH PRIVILEGES;




# Create the glance user:
#openstack user create --domain default --password-prompt glance
openstack user create glance --domain default --password $GLANCE_PASS

# Add the admin role to the glance user and service project:
openstack role add --project service --user glance admin

# Create the glance service entity:
openstack service create --name glance --description "OpenStack Image" image



# Create the Image service API endpoints:
openstack endpoint create --region RegionOne image public http://ctl01:9292
openstack endpoint create --region RegionOne image internal http://ctl01:9292
openstack endpoint create --region RegionOne image admin http://ctl01:9292





# Install the packages:
yum -y install openstack-glance













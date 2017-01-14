#!/usr/bin/bash




# environment-messaging
#-------------------------------------------------------------------------------------------------------------

yum -y install rabbitmq-server

#
systemctl enable rabbitmq-server
systemctl start rabbitmq-server


# Add the openstack user:
rabbitmqctl add_user openstack RABBIT_PASS


# Permit configuration, write, and read access for the openstack user:
rabbitmqctl set_permissions openstack ".*" ".*" ".*"






# environment-memcached
#-------------------------------------------------------------------------------------------------------------

yum -y install memcached python-memcached

#
systemctl enable memcached.service
systemctl start memcached.service









#!/bin/bash




# Create the service project:
openstack project create --domain default --description "Service Project" service

# Create the demo project:
openstack project create --domain default --description "Demo Project" demo


# Create the demo user:
#openstack user create --domain default --password-prompt demo
openstack user create demo --domain default --password demo


# Create the user role:
openstack role create user

# Add the user role to the demo project and user:
openstack role add --project demo --user demo user













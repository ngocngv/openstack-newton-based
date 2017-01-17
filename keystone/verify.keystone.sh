#!/bin/bash

# Verifying keystone


# unset OS_AUTH_URL OS_PASSWORD


# As the admin user, request an authentication token:
openstack --os-auth-url http://ctl01:35357/v3 \
    --os-project-domain-name Default --os-user-domain-name Default \
    --os-project-name admin --os-username admin token issue



# As the demo user, request an authentication token:
openstack --os-auth-url http://ctl01:5000/v3 \
    --os-project-domain-name Default --os-user-domain-name Default \
    --os-project-name demo --os-username demo token issue



# Request an authentication token:
openstack token issue


#!/bin/bash

#delete user choice instance/server
microstack.openstack server list

echo "enter the delete instance name:"
read instance_name

if microstack.openstack server delete $instance_name
then
  echo "server delete successfully"
else
	exit
fi
# After delete server list
microstack.openstack server list
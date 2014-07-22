#!/bin/bash

source /opt/stack/devstack/openrc admin

echo "This Script checks to see if all services are up and running"

echo -e ' \n'


neutron agent-list | grep -i 'xxx' &> /dev/null
if [ $? == 0 ] ; then
       	echo "SOME SERVICES ARE STILL DOWN
	 ` neutron agent-list | grep -i 'xxx' `"
		else
	echo "SERVICES ARE UP
		` neutron agent-list | grep -i ':-)' ` "
fi

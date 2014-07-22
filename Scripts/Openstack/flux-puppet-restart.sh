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

# Start Puppet Servers

export OS_TENANT_NAME=social
nova start flux-puppet-001.sec1.cloud.viacom.com
nova start flux-puppet-002.sec1.cloud.viacom.com

#reapply security groups to servers (dunno why I need to do this, but I do)

nova remove-secgroup flux-puppet-001.sec1.cloud.viacom.com puppetmaster
nova remove-secgroup flux-puppet-002.sec1.cloud.viacom.com puppetmaster
nova add-secgroup flux-puppet-001.sec1.cloud.viacom.com puppetmaster
nova add-secgroup flux-puppet-002.sec1.cloud.viacom.com puppetmaster

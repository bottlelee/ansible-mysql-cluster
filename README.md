# ansible-mysql-cluster
Deploy MySQL in HA mode, 2 masters, 1 slave, in replication mode.
Fully tested on CentOS(7.x) and Ubuntu(xenial)

## Before you play
1. Copy `hosts.ini.example` to `hosts.ini`, edit it as you want.
1. Copy `group_vars/all.yml.example` to `group_vars/all.yml`, edit it as you want.
1. Edit files under directory `vars` to suit your requirement.
1. Make sure your system packages are upgraded to latest version, and rebooted after upgrade.
1. If the OS is CentOS, make sure selinux is disabled and reboot the system if you change it.

## Run `ansible-playbook play-all.yml`

## Notes
1. MySQL slaves replica from masters through haproxy service(on same host). Which means if master 1 failed, the slaves will automatic connect to master 2.
1. DO NOT change the host vars 'auto_increment_increment' and 'auto_increment_offset'

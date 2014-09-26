A simple bash script to test ip:port
===

usage: ./TestTcp.sh IP1:PORT1,IP2:PORT2

example:

$ ./TestTcp.sh

[root@redhat]# ./TestTcp.sh 172.16.203.128:22
172.16.203.128:22:Connected

[root@redhat]# ./TestTcp.sh 172.16.203.128:22,172.16.203.128:33,172.16.203.128:21
172.16.203.128:22:Connected
172.16.203.128:33:Failed
172.16.203.128:21:Connected

test under RHEL6.5 and OSX 10.9.5



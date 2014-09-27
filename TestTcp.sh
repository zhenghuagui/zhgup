#!/bin/bash
#
# Test if ip:port is reachable
# originally written by Perl,wrapped by Bash
# 
# usage: TestTcp IP1:PORT1,IP2:PORT2
#
#

TestTcp(){
    export mac_port_list = $1
    perl -wle '
    use IO::Socket;

    @SvrList = split(",",$ENV{"mac_port_list"});
    $sock = NULL;
    for($i=0;$i<@SvrList;$i++) {
        ($Addr,$Port) = split(":",$SvrList[$i]);
        if ($sock = new IO::Socket::INET(PeerAddr => $Addr, PeerPort => $Port, Timeout => 1, Proto => "tcp")) {
            print STDOUT "$Addr:$Port:Connected";
        } else {
            print STDOUT "$Addr:$Port:Failed";
        }
        close($sock);
    }'
}

TestTcp "$1"

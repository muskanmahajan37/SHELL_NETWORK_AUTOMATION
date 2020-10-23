#!/bin/bash
# ip-addresses.sh
# List the IP addresses your computer is connected to.
connection_type=TCP
field=2
no_match=LISTEN
lsof_args=-ni
router="[0-9][0-9][0-9][0-9][0-9]->"
lsof "$lsof_args" | grep $connection_type | grep -v "$no_match" |
      awk '{print $9}' | cut -d : -f $field | sort | uniq |
      sed s/"^$router"//
sleep 2


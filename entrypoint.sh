#!/bin/sh

# create cache directories
if ! [ -d /var/cache/squid/00 ]; then 
    echo "Cache directories not present.  Creating..."
    /usr/sbin/squid -N -f /etc/squid/squid.conf -z
fi

# run
/usr/sbin squid -z;  exec $(which squid) -f /etc/squid/squid.conf -NYC -d 9

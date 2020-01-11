#!/bin/bash
#
# https://github.com/lpadgett/DuckDnsIpUpdater
#
# Copyright (c) 2020 lpadgett. Released under the GNU General Public License v3.0.

# Ping an OpenDNS server once to check for IPv4 connectivity, wait 1 second for a response.
if ping -q -c 1 -W 1 208.67.222.222 >/dev/null; then
    #do something
else
    echo "You have no IPv4 connectivity. This is a problem!"
fi
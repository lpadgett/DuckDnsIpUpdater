#!/bin/bash
#
# https://github.com/lpadgett/DuckDnsIpUpdater
#
# Copyright (c) 2020 lpadgett. Released under the GNU General Public License v3.0.

# Ping an OpenDNS server once to check for IPv4 connectivity, wait 1 second for a response.
if ping -q -c 1 -W 1 208.67.222.222 >/dev/null; then
    #Greet user
    echo "Welcome to the DuckDNS IP Updater!"
    # Store name of domain from user
    echo "What is the name of your DuckDNS domain? ex: \"my-domain\" excluding quotes (do not include https:// or .duckdns.org)"
    read -p "Enter your domain here: " domain

    # Store DuckDNS token from user
    echo "What is the name of your DuckDNS account token? ex: \"abc123de-123a-abc1-12ab-345abcd123ab\" excluding quotes"
    read -p "Enter your  token here: " token

    # Store filename to create cron job
    echo "What would you like to name the job you will periodically run?"
    read -p "Enter your filename here, excluding the file extension: " filename

    # Since DuckDNS will detect the IPv4 address of the requesting device if not supplied, leave IP blank
    # See documentation: https://www.duckdns.org/spec.jsp
    echo "*/10 * * * * curl \"https://www.duckdns.org/update?domains={$domain}&token={$token}\"" >> "$filename.txt"

    # Send file to crontab
    crontab $filename.txt

    # Finish up
    echo "All done! Feel free to delete the file you just created in the current directory, as it is no longer needed."
    exit
else
    echo "You have no IPv4 connectivity. Fix this before you proceed!"
    exit
fi
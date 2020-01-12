# DuckDnsIpUpdater
I wrote a script to make a cron job that automatically updates your device's IP on [DuckDNS](www.duckdns.org) so you don't have to! (:

Just download the script, grant it the proper permissions, run it, and voilà! The IP for the corresponding domain will be updated every 10 minutes (in the future I'll add functionality to permit users to set custom timeframes).


# Instructions
To use the script, just navigate to a directory of your preference (where any files will be stored. Later they can be deleted at your discretion) and run `wget https://git.io/JvfVt -O duckDnsIpUpdater.sh && bash duckDnsIpUpdater.sh`! After that, you should be all set!

# Use Cases
I'm really not sure what you want to do with it, but if it involves updating your IP on DuckDNS (the greatest dynamic DNS service there is), then it should do nicely.

As for me, I'm using it to regularly update my IP for my VPN that I'm hosting on my Orange Pi (Armbian setup made easy with [Nyr's](https://github.com/Nyr) wonderful [OpenVPN road warrior installer](https://github.com/Nyr/openvpn-install)!). I figure most of you folks would be running Raspbian since Rpis are the most common SBCs around in the maker/hacker space these days, but don't worry, it should work on any Debian derivative (;

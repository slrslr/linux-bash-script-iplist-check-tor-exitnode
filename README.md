# linux-bash-script-iplist-check-tor-exitnode

Linux bash script to check list of IPs (by default OpenVZ VPS IPs) against list of Tor exist node IPss and report is some IP is listed on the Tor website.

To make it working with custom IP list (not OpenVZ VPS IP list), comment out or delete line:
vzlist | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" > /tmp/vmips

and then add IPs to the file /tmp/vmips (one IP per line).

# linux-bash-script-iplist-check-tor-exitnode

Linux bash script to check list of IPs (by default OpenVZ VPS IPs) against list of Tor exist node IPs and report if some IP is listed there on the Tor website.

To make it working with custom IP list (not OpenVZ VPS IP list), comment out or delete line:

vzlist | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" > /tmp/vmips

and then add IPs to the file /tmp/vmips (one IP per line).

---

Script can be made to run as a cronjob, "chmod 600 scriptname" might be needed

webpagetocheck=https://check.torproject.org/exit-addresses
adminmail=YOU@gmail.com

rm -f /tmp/exitnodes >/dev/null
rm -f /tmp/vmips >/dev/null

curl --silent -o /tmp/exitnodes -L $webpagetocheck

vzlist | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" > /tmp/vmips

while read ip;do
# echo $ip
if [[ "$(cat /tmp/exitnodes)" == *"$ip"* ]];then
echo "$ip is found within $webpagetocheck" | mail -s "IP match checked webpage" $adminmail
fi
done < /tmp/vmips

wget -N http://ftp.afrinic.net/pub/stats/afrinic/delegated-afrinic-extended-latest
wget -N http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-extended-latest
wget -N http://ftp.arin.net/pub/stats/arin/delegated-arin-extended-latest
wget -N http://ftp.lacnic.net/pub/stats/lacnic/delegated-lacnic-extended-latest
wget -N http://ftp.ripe.net/pub/stats/ripencc/delegated-ripencc-extended-latest
cat delegated-afrinic-extended-latest delegated-apnic-extended-latest delegated-arin-extended-latest delegated-lacnic-extended-latest delegated-ripencc-extended-latest>>delegated-all-latest
cat delegated-all-latest | grep ipv4 | grep CN | awk -F\| '{ printf("%s/%d\n", $4, 32-log($5)/log(2)) }' >cnroute.txt
cat delegated-all-latest | grep ipv4 | grep HK | awk -F\| '{ printf("%s/%d\n", $4, 32-log($5)/log(2)) }' >hkroute.txt
cat delegated-all-latest | grep ipv4 | grep MO | awk -F\| '{ printf("%s/%d\n", $4, 32-log($5)/log(2)) }' >moroute.txt
cat delegated-all-latest | grep ipv4 | grep TW | awk -F\| '{ printf("%s/%d\n", $4, 32-log($5)/log(2)) }' >twroute.txt
rm delegated*
python chinaroute.py
git add .
git commit -m "`date`"
git push origin master


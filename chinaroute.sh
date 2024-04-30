wget -N http://ftp.afrinic.net/pub/stats/afrinic/delegated-afrinic-extended-latest
wget -N http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-extended-latest
wget -N http://ftp.arin.net/pub/stats/arin/delegated-arin-extended-latest
wget -N http://ftp.lacnic.net/pub/stats/lacnic/delegated-lacnic-extended-latest
wget -N http://ftp.ripe.net/pub/stats/ripencc/delegated-ripencc-extended-latest
cat delegated-afrinic-extended-latest delegated-apnic-extended-latest delegated-arin-extended-latest delegated-lacnic-extended-latest delegated-ripencc-extended-latest >delegated-all-latest
cat delegated-all-latest | grep ipv4 | grep CN | awk -F\| '{ printf("%s/%d\n", $4, 32-log($5)/log(2)) }' >cnroute.txt
cat delegated-all-latest | grep ipv4 | grep HK | awk -F\| '{ printf("%s/%d\n", $4, 32-log($5)/log(2)) }' >hkroute.txt
cat delegated-all-latest | grep ipv4 | grep MO | awk -F\| '{ printf("%s/%d\n", $4, 32-log($5)/log(2)) }' >moroute.txt
cat delegated-all-latest | grep ipv4 | grep TW | awk -F\| '{ printf("%s/%d\n", $4, 32-log($5)/log(2)) }' >twroute.txt
cat cnroute.txt hkroute.txt moroute.txt twroute.txt | sort >chinaroute.txt
cat delegated-all-latest | grep ipv6 | grep CN | awk -F\| '{ printf("%s/%d\n", $4, $5) }' >cnroute_ipv6.txt
cat delegated-all-latest | grep ipv6 | grep HK | awk -F\| '{ printf("%s/%d\n", $4, $5) }' >hkroute_ipv6.txt
cat delegated-all-latest | grep ipv6 | grep MO | awk -F\| '{ printf("%s/%d\n", $4, $5) }' >moroute_ipv6.txt
cat delegated-all-latest | grep ipv6 | grep TW | awk -F\| '{ printf("%s/%d\n", $4, $5) }' >twroute_ipv6.txt
cat cnroute_ipv6.txt hkroute_ipv6.txt moroute_ipv6.txt twroute_ipv6.txt | sort >chinaroute_ipv6.txt
rm delegated*
python3 chinaroute.py
rm -rf .git/
git init
git remote add origin git@github.com:CNMan/chinaroute.git
git add .
git commit -m "`date`"
git push -f origin master

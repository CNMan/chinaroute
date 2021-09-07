# -*- coding: utf-8 -*-

import os,re,netaddr
from netaddr import *
from io import open

cnlines = [line.rstrip('\n') for line in open('cnroute.txt')]
cnsummary = netaddr.cidr_merge(sorted(cnlines))
cnroute_merged = open("cnroute_merged.txt", "w", encoding='utf-8')
cnroute_merged.write('\n'.join([ str(x) for x in cnsummary ]))
cnroute_merged.close()

hklines = [line.rstrip('\n') for line in open('hkroute.txt')]
hksummary = netaddr.cidr_merge(sorted(hklines))
hkroute_merged = open("hkroute_merged.txt", "w", encoding='utf-8')
hkroute_merged.write('\n'.join([ str(x) for x in hksummary ]))
hkroute_merged.close()

molines = [line.rstrip('\n') for line in open('moroute.txt')]
mosummary = netaddr.cidr_merge(sorted(molines))
moroute_merged = open("moroute_merged.txt", "w", encoding='utf-8')
moroute_merged.write('\n'.join([ str(x) for x in mosummary ]))
moroute_merged.close()

twlines = [line.rstrip('\n') for line in open('twroute.txt')]
twsummary = netaddr.cidr_merge(sorted(twlines))
twroute_merged = open("twroute_merged.txt", "w", encoding='utf-8')
twroute_merged.write('\n'.join([ str(x) for x in twsummary ]))
twroute_merged.close()

chinalines = [line.rstrip('\n') for line in open('chinaroute.txt')]
chinasummary = netaddr.cidr_merge(sorted(chinalines))
chinaroute_merged = open("chinaroute_merged.txt", "w", encoding='utf-8')
chinaroute_merged.write('\n'.join([ str(x) for x in chinasummary ]))
chinaroute_merged.close()

cnlines = [line.rstrip('\n') for line in open('cnroute_ipv6.txt')]
cnsummary = netaddr.cidr_merge(sorted(cnlines))
cnroute_merged = open("cnroute_merged_ipv6.txt", "w", encoding='utf-8')
cnroute_merged.write('\n'.join([ str(x) for x in cnsummary ]))
cnroute_merged.close()

hklines = [line.rstrip('\n') for line in open('hkroute_ipv6.txt')]
hksummary = netaddr.cidr_merge(sorted(hklines))
hkroute_merged = open("hkroute_merged_ipv6.txt", "w", encoding='utf-8')
hkroute_merged.write('\n'.join([ str(x) for x in hksummary ]))
hkroute_merged.close()

molines = [line.rstrip('\n') for line in open('moroute_ipv6.txt')]
mosummary = netaddr.cidr_merge(sorted(molines))
moroute_merged = open("moroute_merged_ipv6.txt", "w", encoding='utf-8')
moroute_merged.write('\n'.join([ str(x) for x in mosummary ]))
moroute_merged.close()

twlines = [line.rstrip('\n') for line in open('twroute_ipv6.txt')]
twsummary = netaddr.cidr_merge(sorted(twlines))
twroute_merged = open("twroute_merged_ipv6.txt", "w", encoding='utf-8')
twroute_merged.write('\n'.join([ str(x) for x in twsummary ]))
twroute_merged.close()

chinalines = [line.rstrip('\n') for line in open('chinaroute_ipv6.txt')]
chinasummary = netaddr.cidr_merge(sorted(chinalines))
chinaroute_merged = open("chinaroute_merged_ipv6.txt", "w", encoding='utf-8')
chinaroute_merged.write('\n'.join([ str(x) for x in chinasummary ]))
chinaroute_merged.close()

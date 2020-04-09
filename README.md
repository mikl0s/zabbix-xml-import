# zabbix-xml-import
Generate combined XML for batch import of Zabbix hosts

### hosts.csv format
```
hostname1;ip1
hostname2;ip2
.
.
hostname99;ip99
```

### host.xml
Change the host.xml accordingly to your needs. The default host type is 10001, which is Linux server with Zabbix agent.

### requirements
Standard unix tools like bash, awk and sed.

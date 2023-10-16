# KEST3LN05EU-Lokaverkefni

### Hostnames and domain
* See [Screenshot](screenshots/server1_hosts.png)

### Static IP address with routing
* [Netplan config](etc/netplan/99_netplan_config.yaml)
* [Screenshot from LAN interface](screenshots/server1_ip_address.png)
* [IP Routing screenshot](screenshots/forwarded_ip.png)

### DHCP setup
* Using Kea DHCP server from ISC
* [Kea config](etc/kea/kea-dhcp4.conf)
* [IP from client1](screenshots/ip_from_dhcp.png)

### DNS setup
* Using dnsmasq
* [dnsmasq config](etc/dnsmasq.conf)
* [resolv](etc/resolv.conf)
* Clients receive this DNS server from DHCP

### User accounts
* File given was in UTF-16, need to convert to UTF-8
* [Convert UTF-16 to UTF-8](home/server/scripts/fix_file.sh)
* [Create Groups](home/server/scripts/create_groups.sh)
* [Create Users](home/server/scripts/create_users.sh)
* [passwd](etc/passwd)

### Backups via cron
* [Cron Job](etc/cron.d/cron_backup)

### NTP Server setup
* [NTP Config](etc/ntp.conf)
* Clients set server1 as master server
* [Client NTP config](etc/client1_ntp.conf)

### Syslog server
* [rsyslog Config](etc/rsyslog.conf)
* [server1: Remote Logs](etc/rsyslog.d/60-rsyslog-remote.conf)
* [clients: Forward Logs](etc/rsyslog.d/30-forward-logs.conf)

### Postfix & Round cube
* [Postfix Config](etc/postfix/main.cf)
* [nginx config](etc/nginx/conf.d/ddp.is.conf)
* [Round Cube config](/var/www/roundcube/config/config.inc.php)

### Printer configuration
* [cupsd.conf](etc/cups/cupsd.conf)
* [Screenshot of Printer list](screenshots/cups_list.png)
* [Screenshot of allowed users](screenshots/cups_allowed_users.png)

### SSH setup
* [sshd_config](etc/ssh/sshd_config)

### Closing other ports
* Using ufw as firewall front-end
* [server1: netstat](screenshots/netstat_result.png)
* [nmap scan](screenshots/nmap_scan.png)
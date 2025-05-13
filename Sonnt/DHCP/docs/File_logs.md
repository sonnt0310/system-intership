# File Log DHCP Server 
## 1. Danh sách địa chỉ IP đã cấp phát bởi DHCP
```
sudo cat /var/lib/dhcp/dhcpd.leases
```
![alt text](../images/File_logs.png)

## 2. Xem log DHCP server
```
sudo journalctl -u isc-dhcp-server
```
![alt text](<../images/File_logs 1.png>)

#  DHCP client

Trên DHCP client (centos) xem file log với lệnh:
```
sudo grep dhclient /var/log/messages
```
![alt text](<../images/File_logs 2.png>)
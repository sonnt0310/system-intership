# 1.Cấu hình DHCP server trên Ubuntu   
## 1.1 Cài đặt DHCP server
```
sudo apt update
sudo apt install isc-dhcp-server -y
```
- Kiểm tra với câu lệnh : 
```
apt list --installed isc-dhcp-server
```
![alt text](<../images/LabDHCP 1.png>)

## 1.2 .Cấu hình DHCP Server 
Chỉnh file chính của DHCP:
```sudo nano /etc/dhcp/dhcpd.conf```

Thêm hoặc sửa nội dung như sau:
```
default-lease-time 600;
max-lease-time 7200;
authoritative;

subnet 192.168.184.0 netmask 255.255.255.0 {
  range 192.168.184.150 192.168.184.200;
  option routers 192.168.184.100;
  option domain-name-servers 8.8.8.8, 1.1.1.1;
}
```

- default-lease-time 600: 	Thời gian thuê IP mặc định là 600 giây (10 phút).
- max-lease-time 7200:	Thời gian thuê IP tối đa là 7200 giây (2 giờ).
- authoritative:	Khẳng định đây là DHCP Server chính trong mạng.
- 192.168.184.0: Địa chỉ mạng.
- range: Đây là dải địa chỉ IP mà DHCP sẽ cấp phát tự động cho các client.
- option routers: địa chỉ gateway mà DHCP thông báo cho các máy client.
- 8.8.8.8: DNS của Google.
- 1.1.1.1: DNS của Cloudflare.
## 1.3 Cấu hình giao diện mạng mà DHCP sẽ phục vụ:
``` 
sudo nano /etc/default/isc-dhcp-server
```
tìm dòng:
```
INTERFACESv4=""
```
Và sửa thành: 
INTERFACESv4="ens33"

Hoặc interface kiểm tra được

## 1.4 Khỏi động và kiểm tra trạng thái 
```
sudo systemctl restart isc-dhcp-server
sudo systemctl status isc-dhcp-server
```
# 2. Cấu hình DHCP Client trên CentOS
## 2.1 Xác định tên card mạng
```
ip a
```
## 2.2 chỉnh file cấu hình kết nối mạng của NetworkManager
```
sudo nano /etc/NetworkManager/system-connections/ens33.nmconnection
```
![alt text](<../images/LabDHCP 3.png>)

## 2.3 Khởi động lại 

```
sudo systemctl restart NetworkManager
```
## 2.4 Kiểm tra IP
```
ip a
```

![alt text](<../images/LabDHCP 4.png>)

## 2.5 Kiểm tra cấp phát trên DHCP server (ubuntu)

chạy lệnh: 
```
cat /var/lib/dhcp/dhcpd.leases
```
![alt text](<../images/LabDHCP 5.png>)

- IP: 192.168.184.152 đã được cấp.
starts: Thời điểm bắt đầu lease – nghĩa là thời điểm client nhận được IP.
- ends: Thời điểm kết thúc lease – sau đó client cần gia hạn (renew) hoặc lấy IP mới.
- cltt (Client Last Transaction Time): Thời điểm cuối cùng client thực hiện giao dịch với DHCP server (giống starts nếu là lần đầu).
- binding state active: Trạng thái binding hiện tại là active → IP này đang được sử dụng.
next binding state free: Khi lease hết hạn, trạng thái tiếp theo sẽ là free → IP này sẽ sẵn sàng để cấp phát lại.
- rewind binding state free: Khi thực hiện "rewind" (quay lui cấu hình trước khi server restart), IP này cũng sẽ trở lại trạng thái free.
- 00:0c:29:49:03:33 : Địa chỉ MAC address của client được cấp phát IP.
- uid "\001\000\014)I\0033": UID của client (Unique Identifier), thường được DHCP client tạo ra để phân biệt trong các môi trường không có MAC cố định (VD: DHCP relay, VPN...).
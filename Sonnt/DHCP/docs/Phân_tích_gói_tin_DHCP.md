# Phân tích gói tin DHCP

## 1 Xin cấp phát lại IP trên CentOS
- Cài đặt gói isc-dhcp-client trên CentOS
```
sudo yum update
sudo yum install dhclient
```
- Gỡ IP hiện tại
```
sudo dhclient -r ens33
```
- Xin cấp IP mới
```
sudp dhclient -v ens33
```
- bắt các gói tin trên VMware Network Adapter VMnet8 .
- Lọc gói DHCP, gõ: bootp

![alt text](<../images/PTGT 1.png>)


## 2. Gói tin DHCPDiscover
Bản tin broadcast từ máy client gửi cho DHCP server yêu cầu cấp địa chỉ IP trong lần đầu tham gia mạng.
IP nguồn: 0.0.0.0. IP đích: 255.255.255.255

![alt text](<../images/PTGT 2.png>)

![alt text](<../images/PTGT 9.png>)
## 3. Gói tin DHCPOffer
DHCP server gửi bản tin offer đề nghị cấp địa chỉ 192.168.216.151 cho client, kèm theo các thông tin về subnet mask, domain name, thời gian cho thuê IP, etc.
![alt text](<../images/PTGT 3.png>)

![alt text](<../images/PTGT 8.png>)
## 4. Gói tin DHCPRequest
Bản tin DHCP client gửi cho DHCP server chấp nhận địa chỉ IP được cấp từ bản tin offer trên
![alt text](<../images/PTGT 4.png>)

![alt text](<../images/PTGT 6.png>)
## 5. Gói tin DHCPACK
Server xác nhận các thông tin từ bản tin DHCPRequest và gửi trả lại phía client các thông tin cấu hình IP, kết thúc quá trình cấp phát địa chỉ IP.
![alt text](<../images/PTGT 5.png>)

![alt text](<../images/PTGT 7.png>)
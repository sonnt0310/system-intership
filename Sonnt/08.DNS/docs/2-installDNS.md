# Cài đặt DNS server trên CentOS 9
## Bước 1:Cài đặt BIND trên CentOS 9
```
sudo dnf install bind bind-utils -y
sudo systemctl enable --now named
```
## Bước 2: Cấu hình tường lửa(nếu có)
```
sudo dnf install bind bind-utils -y
sudo systemctl enable --now named
```

## Bước 3: Tạo file zone forward và zone reverse(bản ghi PTR)
### 3.1 : Tạo file forward zone 
- File lưu trữ thông tin mối quan hệ giữa địa chỉ IP và host name. Khi được truy vấn, nó cung cấp địa chỉ IP của host system bằng host name

- Tạo file :
```
vi /var/named/mywebsite.test.db
```
- Thêm nội dung: 
```
$TTL 86400
@   IN  SOA     ns1.mywebsite.test. admin.mywebsite.test. (
                2025052101  ; Serial
                3600        ; Refresh
                1800        ; Retry
                604800      ; Expire
                86400 )     ; Minimum TTL

    IN  NS      ns1.mywebsite.test.
ns1 IN  A       192.168.216.129     ; IP DNS server (CentOS 9)
@   IN  A       192.168.216.100     ; IP máy Ubuntu (Web Server)
www IN  A       192.168.216.100     ; Truy cập www.mywebsite.test
```

![alt text](<../images/LabDNS 1.png>)


Trong đó :

- TTL: là viết tắt của Time-To-Live là khoảng thời gian(hoặc hops) mà gói tin tồn tại trên mạng trước khi bị router loại bỏ.
- IN: là Internet
- SOA: là viết tắt của Start of Authority. Về cơ bản nó xác định name server có thẩm quyền, trong trường hợp này là dns-server.dangdohai.com và thông tin liên lạc - admin.dangdohai.com
- NS: là viết tắt của Name Server
- A: là bản ghi A. Nó trỏ 1 domain/subdomain tới địa chỉ IP
- Serial: áp dụng cho mọi dữ liệu trong zone và có định dạng YYYYMMDDNN với YYYY là năm, MM là tháng, DD là ngày, NN là số lần sửa đổi dữ liệu zone trong ngày. Luôn luôn phải tăng số này lên mỗi lần sửa đổi dữ liệu zone. Khi Slave DNS Server liên lạc với Master DNS Server, trước tiên nó sẽ hỏi số serial. Nếu số serial của Slave nhỏ hơn số serial của máy Master tức là dữ liệu zone trên Slave đã cũ và sau đó Slave sẽ sao chép dữ liệu mới từ Master thay cho dữ liệu đang có.
- Refresh: chỉ ra khoảng thời gian Slave DNS Server kiểm tra dữ liệu zone trên Master để cập nhật nếu cần. Giá trị này thay đổi tùy theo tuần suất thay đổi dữ liệu trong zone.
- Retry: nếu Slave DNS Server không kết nối được với Master DNS Server theo thời hạn mô tả trong refresh (ví dụ Master DNS Server bị shutdown vào lúc đó thì Slave DNS Server phải tìm cách kết nối lại với Master DNS Server theo một chu kỳ thời gian mô tả trong retry. Thông thường, giá trị này nhỏ hơn giá trị refresh).
- Expire: nếu sau khoảng thời gian này mà Slave DNS Server không kết nối được với Master DNS Server thì dữ liệu zone trên Slave sẽ bị quá hạn. Khi dữ liệu trên Slave bị quá hạn thì máy chủ này sẽ không trả lời mỗi truy vấn về zone này nữa. Giá trị expire này phải lớn hơn giá trị refresh và giá trị retry.
- Minimum TTL: chịu trách nhiệm thiết lập TTL tối thiểu cho 1 zone
### 3.2 : Tạo file forward zone 
- Tạo file:
```
sudo vi /var/named/mywebsite.test.rev
```
- Thêm nội dung:

```
$TTL 86400
@   IN  SOA     ns1.mywebsite.test. admin.mywebsite.test. (
                2025052101
                3600
                1800
                604800
                86400 )

    IN  NS      ns1.mywebsite.test.
129 IN  PTR     ns1.mywebsite.test.
100 IN  PTR     mywebsite.test.
```

![alt text](<../images/LabDNS 2.png>)


## Bước 4: Phân quyền cho 2 file vừa tạo
```
chgrp named /var/named/mywebsite.test.fwd
chgrp named /var/named/mywebsite.test.rev
```

## Bước 5: Cấu hình file DNS `/etc/name.conf`

- copy backup file cấu hình
```
cp /etc/name.conf /etc/name.conf.bak
```
- Chỉnh sửa file ` /etc/name.conf`

    - `listen-on port 53 { 127.0.0.1; any; };`	: DNS lắng nghe trên cổng 53 từ mọi địa chỉ IP.
    - `allow-query { any; };`: 	Cho phép mọi IP gửi truy vấn.
    - Comment dòng `listen-on-v6 port 53` nếu không dùng ipv6. Ở đây, ta không dùng ipv6.

![alt text](<../images/LabDNS 3.png>)

- Để xác định reverse và forward lookup zones, Thêm vào cuối file named.conf cấu hình dưới: 
```
zone "mywebsite.test" IN {
        type master;
        file "/var/named/mywebsite.test.fwd";
        allow-update{none;};
};

zone "216.168.192.in-addr.arpa" IN{
        type master;
        file "/var/named/mywebsite.test.rev";
        allow-update{none;};
};
```
- ```zone "mywebsite.test" IN { ... }```	Khai báo zone cho tên miền mywebsite.test.
- ```type master;```	Đây là DNS chính (primary) cho zone này.
- ```file "var/named/mywebsite.test.fwd";```	Tên file chứa dữ liệu zone.
- ```allow-update { none; };```	Không cho phép cập nhật động từ client.

- ```216.168.192.in-addr.arpa``` zone reverse. (Lưu ý: quy tắc đặt tên : 3 octet đầu của IP bị đảo ngược và nối với `in-addr.arpa`)

## Bước 6: Kiểm tra cấu hình
- Kiểm tra các file:
```
named-checkconf      # kiểm tra toàn bộ file cấu hình
named-checkzone mywebsite.test /var/named/mywebsite.test.fwd
named-checkzone 216.168.192.in-addr.arpa /var/named/mywebsite.test.rev
```
- Nếu không có lỗi sẽ hiện thị như sau:

![alt text](<../images/LabDNS 4.png>)
- Khởi động lại dịch vụ:
```
sudo systemctl restart named
```

# Trên clinet Windown
## Trỏ DNS về DNS server trên Centos 
- Mở: **Control Panel>Network and Internet>Network Connections**
- Chọn **adapter đang kết nối mạng** (VD: WIFI).
- Nhấn chuột phải > **Properties**
- Chọn **Internet Protocol Version 4 (TCP/IPv4) > Properties**
- Ở phần **"Use the following DNS server addresses"**, điền:
- Preferred DNS server: **192.168.216.129** (địa chỉ máy CentOS)
## Kiểm tra trên Windows
- Mở `cmd`:
    - Nhập: 
    ```
    nslookup mywebsite.test
    ```
    - Hiện ra kết quả:
    ![alt text](<../images/LabDNS 5.png>)    

- Truy cập trên web: 

    - http://mywebsite.test

    ![alt text](<../images/LabDNS 6.png>)
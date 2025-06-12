# DNS Records  
Trong hệ thống DNS (Domain Name System), các bản ghi (DNS records) là những mục định nghĩa cách tên miền được phân giải (resolve) ra các thông tin như địa chỉ IP, máy chủ thư điện tử, v.v. Dưới đây là những bản ghi phổ biến và thường dùng nhất:

##  1. A Record (Address Record)
- Liên kết tên miền với địa chỉ IPv4 cụ thể.
- Cú pháp: `tên_miền   IN   A   địa_chỉ_IP`
- Ví dụ: 
```
mywebsite.local.     IN  A   192.168.216.100
```
- Khi truy cập `mywebsite.local`, sẽ phân giải đến IP `192.168.216.100`.

## 2. AAAA Record (IPv6 Address)
- Giống A Record nhưng cho IPv6

## 3. CNAME Record (Canonical Name)
- Cho phép tên miền có nhiều bí danh khác nhau, khi truy cập các bí danh sẽ cũng về 1 địa chỉ tên miền. Để sử dụng bản ghi CNAME cần khai báo bản ghi A trước.
- Cú pháp: tên_alias   IN   CNAME   tên_đích.
- Ví dụ : 
```
www.mywebsite.local.    IN  CNAME  mywebsite.local.
```
Khi truy cập `www.mywebsite.local` sẽ được chuyển hướng đến `mywebsite.local`.'
## 4. MX Record (Mail Exchange)
- Xác định mail server nhận email cho tên miền.
- Cú pháp: 
```
tên_miền   IN   MX   [priority]   mailserver.
```
- Ví dụ: 
```
mywebsite.local.    IN   MX  10   mail.mywebsite.local.
mail.mywebsite.local.  IN A 192.168.216.105
```

## 5. NS Record (Name Server)

- Xác định DNS server nào chịu trách nhiệm phân giải tên miền.
- Cú pháp:
```
 tên_miền   IN   NS   tên_máy_chủ_dns.
```
- Ví dụ : 
```
mywebsite.local.    IN   NS   ns1.mywebsite.local.
ns1.mywebsite.local.  IN  A  192.168.216.129
```

## 6. SOA Record (Start of Authority)
- Bắt buộc có trong mỗi zone. Cung cấp thông tin quản trị zone.
- Cú pháp : 
```
@   IN  SOA  primary_dns.  email_admin. (
        serial_number
        refresh
        retry
        expire
        minimum_ttl
)
```

| Thành phần     | Giải thích chi tiết                                                   |
| -------------- | --------------------------------------------------------------------- |
| `@`            | Đại diện cho tên miền chính của zone file (ví dụ: `mywebsite.local.`) |
| `IN`           | Kiểu hệ thống (Internet)                                              |
| `SOA`          | Start of Authority – bản ghi bắt đầu vùng                             |
| `primary_dns.` | Tên DNS server chính (máy chủ cấp quyền quản lý zone)                 |
| `admin_email.` | Địa chỉ email của người quản trị DNS (dấu `@` được thay bằng dấu `.`) |
| `serial`       | Số phiên bản – phải tăng mỗi lần sửa đổi zone để slave DNS cập nhật   |
| `refresh`      | Khoảng thời gian (giây) để DNS phụ kiểm tra cập nhật từ DNS chính     |
| `retry`        | Nếu không kết nối được DNS chính, bao lâu sau sẽ thử lại              |
| `expire`       | Sau bao lâu không liên lạc được thì DNS phụ bỏ zone đó                |
| `minimum`      | TTL mặc định – thời gian mà client nên lưu cache                      |


Ví dụ: 
```
@   IN  SOA   ns1.mywebsite.local.  admin.mywebsite.local. (
        2025052101 ; Serial – YYYYMMDDnn
        3600       ; Refresh – 1h
        1800       ; Retry   – 30m
        604800     ; Expire  – 7d
        86400 )    ; Minimum TTL – 1d
```

Phân tích:
- ns1.mywebsite.local. – máy chủ DNS chính.
- admin.mywebsite.local. – email admin@mywebsite.local.
- 2025052101 – Serial gồm:
- 2025 = năm
- 05 = tháng
- 21 = ngày
- 01 = lần cập nhật trong ngày
- Mỗi lần chỉnh sửa zone, bạn phải tăng số này (ví dụ đổi 01 → 02).

| Trường  | Thời gian khuyến nghị (ví dụ) | Ý nghĩa                                               |
| ------- | ----------------------------- | ----------------------------------------------------- |
| Refresh | 3600 (1 giờ)                  | Sau mỗi 1 giờ, DNS phụ hỏi xem zone có thay đổi không |
| Retry   | 1800 (30 phút)                | Nếu không kết nối được DNS chính, thử lại sau 30 phút |
| Expire  | 604800 (7 ngày)               | Nếu sau 7 ngày vẫn không kết nối được, xóa zone       |
| Minimum | 86400 (1 ngày)                | TTL mặc định nếu bản ghi không chỉ định TTL riêng     |


## 7. PTR Record (Reverse DNS - phân giải ngược)
- Dùng để phân giải địa chỉ IP → tên miền.
- Cú pháp:  
```
xxx.yyy.zzz.in-addr.arpa.   IN   PTR   tên_miền.
```
- IP là 192.168.216.100 → viết ngược:
```
100.216.168.192.in-addr.arpa.   IN   PTR   mywebsite.local.
```
- Tên zone phải viết ngược IP (dạng in-addr.arpa) và thường chia theo từng subnet.

- IP v6 dùng ip6.arpa, nhưng không phổ biến trong nội bộ.

- Phải có bản ghi A tương ứng với PTR thì phân giải ngược mới đáng tin cậy.

## 8. TXT Record
- Chứa văn bản tùy ý (xác minh tên miền, SPF, DKIM, v.v.)
- Cú pháp:
```
tên_miền   IN   TXT   "nội_dung_text"
```
- Ví dụ: 
```
mywebsite.local.  IN  TXT  "v=spf1 ip4:192.168.216.100 -all"
```
## 9. SRV Record
- Xác định thông tin về dịch vụ mạng cụ thể như SIP, XMPP, LDAP...

- Cú pháp:
```
_service._protocol.tên_miền.   IN   SRV  priority weight port target.
```
- Ví dụ:
```
_sip._udp.mywebsite.local.  IN  SRV  10 60 5060 sipserver.mywebsite.local.
```

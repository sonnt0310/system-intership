# file Hosts
Tệp hosts là một tệp văn bản đơn giản mà hệ điều hành sử dụng để phân giải tên miền thành địa chỉ IP trước khi truy vấn DNS thực sự.
## 1 Vị trí tệp hosts theo hệ điều hành:

| Hệ điều hành  | Đường dẫn tệp `hosts`                   |
| ------------- | --------------------------------------- |
| Linux / macOS | `/etc/hosts`                            |
| Windows       | `C:\Windows\System32\drivers\etc\hosts` |

## 2  Cú pháp tệp hosts
```
<địa_chỉ_IP>    <tên_miền> [bí_danh_khác...]
```
ví dụ: 
```
127.0.0.1       localhost
192.168.1.100   myserver.local myserver
142.250.76.14   google.com www.google.com
```

- Dòng đầu: ánh xạ `localhost` với địa chỉ cục bộ.

- Dòng sau: ánh xạ `myserver.local` với một IP trong mạng LAN.

- Dòng cuối: ánh xạ thủ công `google.com` tới một IP cụ thể (dùng để chặn hoặc chuyển hướng).

## 3. Chặn 1 trang web

Để chặn 1 trang web, ta chỉ cần trỏ IP nó về **127.0.0.1**

Ví dụ: chặn truy cập vào Facebook bằng cách ánh xạ tên miền về 127.0.0.1 (localhost):
```
127.0.0.1 facebook.com www.facebook.com
```
- Sau đó, nếu bạn truy cập trình duyệt → facebook.com, sẽ bị chuyển hướng về localhost và không thể kết nối.

## 4. Chuyển hướng website
Người dùng cũng có thể sử dụng mẹo này để chuyển hướng site này đến một site khác. Ví dụ như, sau khi chuyển hướng từ facebook.com sang **twitter.com**, khi ta nhập **facebook.com** vào thanh địa chỉ trình duyệt, điểm đến sẽ là **twitter.com**.

Thêm vào file `Hosts`
```
ip<twitter> facebook.com
```

Như vậy, cứ mỗi khi truy cập facebook.com, trình duyệt sẽ chuyển hướng đến website Twiter.


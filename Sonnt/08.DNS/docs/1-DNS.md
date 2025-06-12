# 1. DNS là gì ?

- DNS (viết tắt trong tiếng Anh của Domain Name System - Hệ thống tên miền) là một hệ thống cho phép thiết lập tương ứng giữa địa chỉ IP và tên miền trên Internet.

- Hệ thống tên miền (DNS) về căn bản là một hệ thống giúp cho việc chuyển đổi các tên miền mà con người dễ ghi nhớ (dạng kí tự, ví dụ www.example.com) sang địa chỉ IP vật lý (dạng số, ví dụ 123.11.5.19) tương ứng của tên miền đó. DNS giúp liên kết với các trang thiết bị mạng cho các mục đích định vị và địa chỉ hóa các thiết bị trên Internet.

- Thông qua tên miền ```Googel.com``` có thể xem được IP của nó

![alt text](<../images/DNS 1.png>)

# 2. Chức năng của DNS
- Phân giải tên miền: Chuyển đổi tên miền ( domain name) thành địa chỉ IP và ngược lại
- Giảm tải cho người dùng: Giúp người dùng không phải ghi nhớ dãy số IP phức tạp.
- Tối ưu hóa hiệu suất mạng: Mỗi DNS còn có chức năng ghi nhớ những tên miền mà nó đã phân giải và ưu tiên sử dụng cho những lần truy cập sau.	
- Cân bằng tải : DNS có thể trả về nhiều địa chỉ IP khác nhau cho cùng một tên miền, từ đó phân phối lưu lượng đến các máy chủ khác nhau (giống như chia tải).

# 3. Các loại DNS 
Primary DNS servers: chứa các file gốc về cấu hình tên miền và phản hồi các truy vấn DNS

Secondary DNS server: làm việc như một backup và load balancer server của Primary DNS server. Các Primary DNS server biết sự tồn tại của Secondary DNS server và sẽ gửi các bản cập nhật cho chúng.

Caching DNS server: làm nhiệm vụ lưu trữ các phản hồi DNS nhờ vậy bạn sẽ không cần hỏi lại Primary DNS server trong lần thứ 2 truy cập vào website.

# 4. Domain

Domain (tên miền) là một chuỗi ký tự đại diện cho một địa chỉ IP trên Internet.
## 4.1 Cấu trúc Domain

Hiện nay hệ thống tên miền trên thế giới được phân bố theo cấu trúc hình cây. Tên miền cấp cao nhất là tên miền gốc (ROOT) được thể hiện bằng dấu "."

![alt text](<../images/DNS 2.png>)

- Tên miền cấp cao dùng chung - gTLDs (generic Top Level Domains) : .com, .net, .org, ...

- Tên miền cấp cao quốc gia – ccTLD (country code Top Level Domains) : .vn, .jp, .kr, ...

- Các tên miền iTLD và usTLD thực chất thuộc nhóm gTLD (việc phân tách ra chỉ có ý nghĩa lịch sử). Tên miền cấp cao dùng chung hiện nay được tổ chức quốc tế ICANN (Internet Coroperation for Assigned Names and Numbers) quản lý.
## 4.2 Subdomain
- Subdomain (tên miền con) là một phần mở rộng của tên miền chính (main domain), được sử dụng để tổ chức, phân chia hoặc triển khai các dịch vụ riêng biệt mà không cần mua thêm domain mới.
- Ví dụ thực tế:

**mail.google.com**: mail ở đây được gọi là subdomain của **google.com**

- Chỉ các name server cho mail.google.com biết được tất cả các host tồn tại phía bên dưới nó, cho nên google sẽ trả lời có subdomain mail hay không, root name server sẽ không có dữ liệu cho việc này.

- Truy vấn mail.google.com sẽ đi từ:

    - Root name server → chỉ biết .com

    - TLD server (.com) → biết ai quản lý google.com

    - Name server của google.com → chỉ nơi này mới biết mail, drive, maps...

![alt text](<../images/DNS 3.png>)  


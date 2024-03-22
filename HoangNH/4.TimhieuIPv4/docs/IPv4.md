# Tìm hiểu về IPv4

## 1.IPv4 là gì?

IPv4 là một giao thức mạng Internet dựa trên việc sử dụng địa chỉ IP để xác định vị trí của các thiết bị trong mạng.

IPv4 đã được sử dụng trong hơn 30 năm và vẫn là giao thức mạng phổ biến nhất trên toàn thế giới. Tuy nhiên, IPv4 đang dần bị thay thế bởi IPv6, vì các giới hạn về địa chỉ IP của nó.

IPv4 là giao thức hướng dữ liệu, được sử dụng cho hệ thống chuyển mạch gói (tương tự như chuẩn mạng Ethernet). Đây là giao thức truyền dữ liêu hoạt động dựa trên nguyên tắc tốt nhất có thể, trong đó, nó không quan tâm đến thứ tự truyền gói tin cũng như không đảm bảo gói tin sẽ đến đích hay việc gây ra tình trạng lặp gói tin ở đích đến. Việc xử lý vấn đề này dành cho lớp trên của chồng giao thức TCP/IP. Tuy nhiên, IPv4 có cơ chế đảm bảo tính toàn vẹn dữ liệu thông qua sử dụng những gói kiểm tra (checksum).

Ipv4 là giao thức mang tính hướng dữ liệu và được sử dụng cho hệ thống chuyển mạch gói. Ipv4 không quan tâm đến thứ tự truyền gói tin, cũng không đảm bảo gói tin sẽ đến đích hay là có xảy ra tình trạng lặp gói tin ở đích đến hay không. Nó chỉ có cơ chế đảm bảo tính toàn vẹn dữ liệu bằng việc sử dụng những gói kiểm tra được thiết lập đi kèm với nó.

## 2.Tại sao không có IPv1,2,3,5

Trước khi IP ra đời như chúng ta biết ngày nay, các kiến ​​trúc sư mạng đã làm việc trên TCP. TCPv1 được thiết kế vào năm 1973, TCPv2 được ghi lại vào tháng 3 năm 1977.

## 3.Cấu trúc của IPv4

Địa chỉ IPv4 sẽ có 32 bit và được biểu diễn thành một dãy số nhị phân và chia thành 4 cụm. Mỗi cụm như vậy sẽ gọi là octet. Mỗi octet sẽ là 8 bit và chúng được ngăn cách bằng dấu chấm (.)

Về hình dáng, cấu trúc của một địa chỉ IPv4 sẽ gồm 4 con số ở dạng thập phân tượng trưng cho 4 cụm. 

![image1](/HoangNH/4.TimhieuIPv4/image/cautruc.jpg)

## 4.Các thành phần của IPv4

Địa chỉ IP gồm 2 phần là phần network và phần host.

Phần network chính là địa chỉ cho chính network đó.Phần host dành để đánh cho cách thiết bị mạng ở trong network đó

## 5.Các lớp của IPv4

Dựa vào cách chọn địa chỉ mạng mà địa chỉ IP được phân thành 5 lớp A, B, C, D, E.

### 5.1.Lớp A

![image2](/HoangNH/4.TimhieuIPv4/image/A.jpg)

Địa chỉ lớp A có phần mạng là 8 bit đầu và phần host là 24 bit sau. Bit đầu tiên của phần mạng luôn là 0.

Lớp A sẽ có các địa chỉ mạng từ 1.0.0.0 đến 126.0.0.0 và mỗi mạng sẽ có 224 địa chỉ host (loại trừ địa chỉ mạng và địa chỉ broadcast).

Mạng loopback sẽ là 127.0.0.0.

### 5.2.Lớp B

![image3](/HoangNH/4.TimhieuIPv4/image/B.jpg)

Địa chỉ lớp B có phần mạng là 16 bit đầu và phần host là 16 bit sau. 2 bit đầu tiên của phần mạng luôn là 1.0.

Lớp B sẽ có các địa chỉ mạng từ 128.0.0.0 đến 191.255.0.0 và mỗi mạng sẽ có 214 địa chỉ host (loại trừ địa chỉ mạng và địa chỉ broadcast).

### 5.3.Lớp C

![image4](/HoangNH/4.TimhieuIPv4/image/C.jpg)

Địa chỉ lớp C có phần mạng là 24 bit đầu và phần host là 8 bit sau. 3 bit đầu tiên của phần mạng luôn là 1.1.0.

Lớp C sẽ có các địa chỉ mạng từ 192.0.0.0 đến 223.255.255.0 và mỗi mạng sẽ có 26 địa chỉ host (loại trừ địa chỉ mạng và địa chỉ broadcast).

### 5.4.Lớp D

Các địa chỉ trong lớp D là những địa chỉ multicast bao gồm 224.0.0.0 đến 239.255.255.255.

### 5.5.Lớp E

Các địa chỉ trong lớp E có vai trò dùng để dự phòng, bao gồm những địa chỉ từ 240.0.0.0 trở đi.

## 6.Phân biệt IP public và IP private

### 6.1.IP public

IP public là địa chỉ duy nhất được gán cho các thiết bị kết nối với Internet. IP public cho phép các thiết bị truy cập vào các dịch vụ trên mạng và giao tiếp với các máy chủ khác trên toàn thế giới.

IP public được nhà cung cấp dịch vụ Internet (ISP) dùng để chuyển tiếp các yêu cầu Internet đến các gia đình hoặc doanh nghiệp cụ thể.

![image5](/HoangNH/4.TimhieuIPv4/image/public.jpg)

Đặc điểm của IP public:

- Độc nhất: Mỗi thiết bị chỉ có một địa chỉ IP public duy nhất trên Internet.
- Phân biệt: IP public giúp phân biệt giữa các thiết bị trên mạng.
- Kết nối: Thiết bị có IP public có khả năng kết nối với các máy chủ và dịch vụ trên Internet.

IP public đóng vai trò quan trọng trong việc truy cập Internet và giao tiếp trực tuyến. Nó cho phép các thiết bị truy cập vào các trang web, gửi hoặc nhận dữ liệu từ các máy chủ và tham gia vào các hoạt động trực tuyến khác.

Phạm vi của IP public: Các phạm vi sẽ được nhà cung cấp dịch vụ mạng bảo lưu:

- 0.0.0 đến 10.255.255.255
- 16.0.0 đến 172.31.255.255
- 168.0.0 đến 192.168.255.255

Bên cạnh những địa chỉ nói trên thì phạm vi địa chỉ IP public nằm trong khoảng "1…" đến "191…." và tất cả các địa chỉ "192…" sẽ không được đăng ký công khai mà chỉ được sử dụng ở phía sau một router dưới dạng là một địa chỉ IP Private.

Ưu điểm: 

- Truy cập đa dạng: Với IP Public, bạn có thể truy cập vào nhiều nội dung trực tuyến mà có thể bị hạn chế hoặc chặn đối với IP cá nhân. Điều này giúp mở rộng khả năng truy cập của bạn trên Internet.
- Ứng dụng linh hoạt: IP Public cho phép bạn sử dụng nhiều ứng dụng và dịch vụ trực tuyến mà có thể yêu cầu IP duy nhất. Điều này giúp tăng cường trải nghiệm của người dùng và mở ra nhiều cơ hội mới.
- Tốc độ kết nối: Với IP Public, bạn có thể truy cập vào các máy chủ với tốc độ kết nối nhanh hơn, giúp tối ưu hóa trải nghiệm trực tuyến và giảm thời gian chờ đợi.
- Hỗ trợ kỹ thuật: Nếu gặp vấn đề về IP Public, bạn có thể dễ dàng nhận được sự hỗ trợ kỹ thuật từ các chuyên gia, giúp giải quyết vấn đề một cách nhanh chóng và hiệu quả.

Nhược điểm:

- Chi phí của việc sử dụng IP Public: Các dịch vụ cung cấp IP Public thường đưa ra các gói cước phí dựa vào nhu cầu sử dụng và số lượng IP cần thuê.
- Vấn đề về bảo mật khi sử dụng IP Public: Việc sử dụng IP Public làm tăng khả năng bị tấn công mạng, theo dõi hoạt động trực tuyến và xâm nhập vào hệ thống thông tin.

### 6.2.IP private:

IP private là địa chỉ IP chỉ sử dụng trong mạng nội bộ và không được sử dụng để truy cập Internet trực tiếp.

IP Private thường được sử dụng trong các mạng nội bộ như: mạng gia đình, doanh nghiệp, tổ chức, công ty, trường học,.. để phân bổ địa chỉ IP cho các thiết bị trên mạng trong phạm vi cục bộ.

![image6](/HoangNH/4.TimhieuIPv4/image/private.png)

Phạm vi của IP private:

- 10.0.0.0 đến 10.255.255.255
- 172.16.0.0 đến 172.31.255.255
- 192.168.0.0 đến 192.168.255.255

Bảng so sánh: 

| Tiêu chí |  IP public | IP private |
|:------|:-----------------|:------|
|Hoạt động| Hệ thống mạng toàn cầu | Hệ thống mạng cục bộ |
|Nguồn gốc | Được chỉ định bởi ISP | Được chỉ định bởi bộ định tuyến cho một thiết bị cụ thể trên mạng cục bộ|
|Liên lạc| Dùng để giao tiếp qua Internet | Được sử dụng để liên lạc trong một mạng riêng|
|Quy tắc | Địa chỉ IP Public có thể hoạt động khác nhau theo một quy luật đồng nhất hay không đồng nhất | Địa chỉ IP Private sẽ được kết nối khác nhau trong mạng, nhưng vẫn tuân thủ theo một quy luật thống nhất |
|Phạm vi| Trừ một số địa chỉ nằm trong IP Private, phần còn lại sẽ là IP Public| 10.0.0.0 đến 10.255.255.255 / 172.16.0.0 đến 172.31.255.255 / 192.168.0.0 đến 192.168.255.255 |
                           
## 7.Cách chia địa chỉ IPv4



## 8.Phân biệt multicast và broadcast

### 8.1.Multicast



## 9.Subnet, subnet mask, prefex

### 9.1.Subnet:

Subnet (hay còn gọi là mạng con) là một phần của một mạng lớn được chia nhỏ để quản lý tài nguyên mạng hiệu quả hơn. Một subnet được định nghĩa bởi một địa chỉ IP mạng và một subnet mask. Các thiết bị trong cùng một subnet có thể giao tiếp với nhau trực tiếp mà không cần thông qua một router.

### 9.2.Subnet mask:

 Subnet mask là một dải 32 bit nhị phân đi kèm với một địa chỉ IP, được các host sử dụng để xác định địa chỉ mạng của địa chỉ IP này.

 



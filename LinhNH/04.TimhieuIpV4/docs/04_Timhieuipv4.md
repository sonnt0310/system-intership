# **Tìm hiểu về IPv4** 
# Mục lục
1. [Khái quát về IPv4](#1-khái-quát-về-ipv4)
2. [Tại sao chỉ có IPv4 mà không có IPv1, v2, v3, v5](#2-tại-sao-chỉ-có-ipv4-mà-không-có-ipv1-v2-v3-v5)
3. [Cấu trúc của IPv4 ](#3-cấu-trúc-của-ipv4)
4. [Các thành phần của IPv4](#4-các-thành-phần-của-ipv4)  
  4.1 [Địa chỉ mạng](#41-địa-chỉ-mạng)  
  4.2 [Địa chỉ máy](#42-địa-chỉ-máy)
5. [Các lớp của IPv4](#5-các-lớp-của-ipv4)  
  5.1 [Lớp A](#51-lớp-a)  
  5.2 [Lớp B](#52-lớp-b)  
  5.3 [Lớp C](#53-lớp-c)  
  5.4 [Lớp D](#54-lớp-d)  
  5.5 [Lớp E](#55-lớp-e)  
6. [Phân biệt IP public và IP private](#6-phân-biệt-ip-public---ip-private)  
7. [Cách chia địa chỉ IPv4](#7-cách-chia-địa-chỉ-ipv4)  
8. [Phân biệt multicast và broadcast](#8-phân-biệt-multicast---broadcast)
9. [Tìm hiểu về subnet, subnet mask, prefix](#9-tìm-hiểu-về-subnet-subnet-mask-prefix)
## 1. Khái quát về IPv4
![hinh_1](/LinhNH/04.TimhieuIpV4/images/ipv4.png)
- **`Địa chỉ IPv4`** (Internet Protocol version 4) được phát triển vào những năm 1970 và trở thành mạng lưới đầu tiên kết nối tất cả các máy tính trên toàn thế giới. Là một địa chỉ duy nhất được sử dụng để xác định một thiết bị trong mạng Internet.
- **`IPv4`** được ứng dụng trong các hệ thống chuyển mạch gói. Vai trò của nó là định hướng dữ liệu truyền đi. Khi truyền đi các gói tin, giao thức này chỉ đảm bảo phần truyền tải mà không để ý đến thứ tự truyền gói tin hoặc vấn đề gói tin có đến đích hay không, có lặp lại ở máy đích hay không. 
## 2. Tại sao chỉ có IPv4 mà không có IPv1, v2, v3, v5
IPv4 là phiên bản đầu tiên và phổ biến nhất của giao thức Internet Protocol (IP), và không có IPv1, IPv2, IPv3, IPv5 là do:
- IPv1 không được đưa ra công khai:
  - Trong quá trình phát triển ban dầu của IP, nhiều phiên bản thử nghiệm đã được thực hiện, nhưng không có phiên bản cụ thể nào được công nhận là IPv1.
  - IPv4 được phát hiện và công bố trong RFC 791 vào năm 1981, và đó là phiên bản IP đầu tiên được sử dụng rộng rãi trên Internet.
- IPv2, IPv3 không phát triển thành công: 
  - Có một số nỗ lực trong quá khứ để phát triển các phiên bản mới của giao thức IP, nhưng chúng không đạt được sự thành công như IPv4
  - Thay vì tiếp tục phát triển IPv2, IPv3, các nhà nghiên cứu và kỹ sư đã quyết định tiếp tục cải tiến và mở rộng IPb4, đồng thời làm việc trên các phiên bản mới hơn như IPv5 và sau này là IPv6.
- IPv5 đã được sử dụng cho một mục đích khác: 
  - Mặc dù không có một phiên bản chính thức của IPv5, nhưng có một phiên bản gọi là IPv5 đã được phát triển nhưng không bao giờ được triển khai như một giao thức Internet chính thống.
  - Thay vào đó, IPv5 thường được sử dụng để đề cập đến giao thức Internet Stream Protocol (ST), được phát triển cho việc truyền dữ liệu streaming âm thanh và video, và không phải là một phiên bản tiếp theo của IPv4.     

_Tóm lại, việc chỉ có IPv4 như là một phiên bản chính thức đầu tiên của giao thức IP là kết quả của quá trình phát triển và tiến hóa của Internet Protocol trong suốt thời gian._
## 3. Cấu trúc của  IPv4
Về cấu tạo, **địa chỉ IPv4** sẽ có 32 bit và được biểu diễn dưới dạng 4 khối, mỗi khối chứa 8 bit, được ngăn cách bằng dấu (.) và được biểu diễn thành một dãy số nhị phân. Mỗi khối khối như vậy sẽ được gọi là một _octet_.
![hinh_3](/LinhNH/04.TimhieuIpV4/images/cautruc.png)
## 4. Các thành phần của IPv4
### 4.1 Địa chỉ mạng
**Địa chỉ mạng** (Network Address): Phần này đại diện cho mạng mà thiết bị đang kết nối tới. Đây là phần chung cho tất cả các thiết bị trong cùng một mạng. Trong một mạng lớn hơn, các số đầu tiên trong địa chỉ IPv4 sẽ thường được giữ nguyên để đại diện cho mạng đó. Ví dụ: Trong địa chỉ 192.168.1.1, "192.168.1" là địa chỉ mạng.
### 4.2 Địa chỉ máy
**Địa chỉ máy** (Host Address): Phần này đại diện cho thiết bị cụ thể trong mạng. Đây là phần dành riêng cho mỗi thiết bị trong mạng. Trong ví dụ trên, "1" là phần địa chỉ của máy trong mạng.
## 5. Các lớp của IPv4
Trong địa chỉ IPv4, các lớp chính xác phân biệt và định rõ phạm vi và mục đích của mỗi địa chỉ IP. Cụ thể, có ba lớp chính (A, B, C) và 2 lớp phụ (D, E)
### 5.1 Lớp A
![hinh_5.1](/LinhNH/04.TimhieuIpV4/images/lopA.png)
Địa chỉ lớp A có phần mạng là 8 bit đầu và phần host là 24 bit sau. Bit đầu tiên của phần mạng luôn là 0.
Lớp A sẽ có các địa chỉ mạng từ 1.0.0.0 đến 126.0.0.0 và mỗi mạng sẽ có 224 địa chỉ host (loại trừ địa chỉ mạng và địa chỉ broadcast).  
Mạng loopback sẽ là 127.0.0.0.
### 5.2 Lớp B
![hinh_5.2](/LinhNH/04.TimhieuIpV4/images/lopB.png)
Địa chỉ lớp B có phần mạng là 16 bit đầu và phần host là 16 bit sau. 2 bit đầu tiên của phần mạng luôn là 1.0.
Lớp B sẽ có các địa chỉ mạng từ 128.0.0.0 đến 191.255.0.0 và mỗi mạng sẽ có 214 địa chỉ host (loại trừ địa chỉ mạng và địa chỉ broadcast).
Địa chỉ lớp C có phần mạng là 24 bit đầu và phần host là 8 bit sau. 3 bit đầu tiên của phần mạng luôn là 1.1.0.
### 5.3 Lớp C
![hinh_5.3](/LinhNH/04.TimhieuIpV4/images/lopC.png)
Lớp C sẽ có các địa chỉ mạng từ 192.0.0.0 đến 223.255.255.0 và mỗi mạng sẽ có 26 địa chỉ host (loại trừ địa chỉ mạng và địa chỉ broadcast).
### 5.4 Lớp D
Lớp D
Các địa chỉ trong lớp D là những địa chỉ multicast bao gồm 224.0.0.0 đến 239.255.255.255.
### 5.5 Lớp E
Lớp E
Các địa chỉ trong lớp E có vai trò dùng để dự phòng, bao gồm những địa chỉ từ 240.0.0.0 trở đi.
## 6. Phân biệt ip Public - ip Private
- Địa chỉ IP được phân thành hai loại: private và public.
![hinh_6](/LinhNH/04.TimhieuIpV4/images/ip_public_private.png)

  - Private: chỉ được sử dụng trong mạng nội bộ (mạng LAN), không được định tuyến trên môi trường Internet. Có thể được sử dụng lặp đi lặp lại trong các mạng LAN khác nhau.
  - Public: là địa chỉ IP sử dụng cho các gói tin đi trên môi trường Internet, được định tuyến trên môi trường Internet, không sử dụng trong mạng LAN. Địa chỉ public phải là duy nhất cho mỗi host tham gia vào Internet. 
- Dải địa chỉ private (được quy định trong RFC 1918):  
Lớp A: 10.x.x.x  
Lớp B: 172.16.x.x -> 172.31.x.x  
Lớp C: 192.168.x.x  
- Kỹ thuật NAT (Network Address Translation) được sử dụng để chuyển đổi giữa IP private và IP public.
- Ý nghĩa của địa chỉ private: được sử dụng để bảo tồn địa chỉ IP public đang dần cạn kiệt.
## 7. Cách chia địa chỉ IPv4
## 8. Phân biệt multicast - broadcast
![hinh_8](/LinhNH/04.TimhieuIpV4/images/broadcast-multicast.png)

|Tính năng | Multicast |Broadcast|
|---|----------------|----|
|Cách thức truyền gói tin|Cho phép gửi dữ liệu đến tập hợp thiết bị được xác định trong mạng|Cho phép gửi các gói tin tới tất cả các thiết bị trong một mạng có cùng dải mạng|
|Địa chỉ|Sử dụng một loạt các địa chỉ đặc biệt thuộc vào dải từ 224.0.0.0 đến 239.255.255.255|Thường là địa chỉ mạng với tất cả các bit địa chỉ máy đều là 1. Ví dụ, nếu địa chỉ mạng là 192.168.1.0, thì địa chỉ broadcast sẽ là 192.168.1.255|
|Sử dụng|Các ứng dụng như video streaming, IPTV, giao thức OSPF, IGMP|Sử dụng cho các tin nhắn hoặc yêu cầu mà tất cả các thiết bị trong mạng cần nhân được (DHCP, ARP)
|Bảo mật|Bảo mật trung bình vì dữ liệu được gửi đến một nhóm thiết bị cụ thể trong mạng|Bảo mật trung bình vì dữ liệu được gửi đến tất cả các thiết bị trong mạng|  
## 9. Tìm hiểu về subnet, subnet mask, prefix
_Các khái niệm subnet, subnet mask và prefix đều liên quan đến cách chia mạng để quản lý và tăng hiệu suất mạng. Chúng là các khái niệm cơ bản trong lĩnh vực mạng máy tính và rất quan trọng trong việc cấu hình và quản lý mạng._
### 9.1 Subnet
- Mạng con (Subnet) là một phần của một mạng lớn được chia nhỏ thành các phần nhỏ hơn để quản lý hiệu quả và để tăng cường bảo mật. Khi một mạng lớn được chia thành các mạng con, mỗi mạng con có thể được quản lý một cách độc lập và tối ưu hóa cho mục đích cụ thể của nó.
- Mạng con thường được định nghĩa bằng một phạm vi các địa chỉ IP liên tiếp, cùng với một subnet mask hoặc độ dài tiền tố (prefix length).
### 9.2 Subnet mask
- Subnet mask là một số dãy bit được sử dụng để xác định phần của địa chỉ IP mà là phần mạng và phần nào là phần host. Nó được sử dụng cùng với địa chỉ IP để xác định mạng con mà một thiết bị hoặc máy tính cụ thể nằm trong.
- Subnet mask thường được biểu diễn dưới dạng dãy số thập phân, gồm bốn octet (mỗi octet từ 0 đến 255), trong đó mỗi octet biểu diễn 8 bit. Các bit 1 trong subnet mask đại diện cho phần mạng của địa chỉ IP, trong khi các bit 0 đại diện cho phần host.
### 9.3 Prefix 
- Số prefix, hay độ dài tiền tố (prefix length), là một phần của hệ thống CIDR (Classless Inter-Domain Routing), được sử dụng để xác định mạng con của một địa chỉ IP. Số prefix định nghĩa số lượng bit trong subnet mask mà được sử dụng để xác định mạng con.
- Trong CIDR, địa chỉ IP được biểu diễn bằng cách kết hợp địa chỉ IP cùng với số prefix, thường là dưới dạng "/xx" (ví dụ: /24), trong đó "xx" là số bit trong subnet mask được sử dụng cho mạng con. Ví dụ, nếu bạn thấy một địa chỉ IP được kèm theo "/24", điều này có nghĩa là subnet mask tương ứng là 255.255.255.0 (vì có 24 bit mạng và 8 bit host).
- Số prefix giúp biểu diễn mạng con một cách ngắn gọn và tiện lợi hơn, đồng thời cung cấp thông tin chi tiết về cách mạng con được chia. Nó cũng được sử dụng trong việc quản lý và cấu hình mạng, giúp quản trị viên mạng hiểu được cấu trúc mạng và phân biệt mạng con một cách dễ dàng.





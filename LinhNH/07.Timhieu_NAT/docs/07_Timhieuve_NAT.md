# Tìm hiểu về cơ chế NAT

## Mục lục
1. [Khái quát về cơ chế NAT](#1-khái-quát-về-nat)  
2. [Phân loại NAT](#2-phân-loại-nat)  
  2.1 [Static NAT](#21-static-nat)  
  2.2 [Dynamic NAT](#22-dynamic-nat)  
  2.3 [NAT Overload](#23-pat)  
3. [SNAT - DNAT là gì?](#3-snat-dnat)  
  3.1 [SNAT](#31-snat)  
  3.2 [DNAT](#32-dnat)  
4. [Cơ chế hoạt động](#4-cơ-chế-hoạt-động)  
## 1. Khái quát về NAT
![hinhanh1](/LinhNH/07.Timhieu_NAT/images/nat.png)  
- NAT (Network Address Translation) là kỹ thuật dùng để dịch, chuyển đổi một bộ địa chỉ IP  sang một bộ địa chỉ khác.
- Để giúp bảo toàn lượng ipv4 public có giới hạn trên toàn thế giới.
## 2. Phân loại NAT
![hinhanh2](/LinhNH/07.Timhieu_NAT/images/phanloai.png)  

### 2.1 Static NAT
![hinhanh2.1](/LinhNH/07.Timhieu_NAT/images/static.png)  


Đây là loại NAT cơ bản nhất và thường được sử dụng để chuyển đổi một địa chỉ IP tĩnh trong mạng cục bộ sang một địa chỉ IP công cộng. Trong quá trình chuyển đổi, một địa chỉ IP tĩnh được ánh xạ với một địa chỉ IP công cộng, giúp thiết lập kết nối đến những thiết bị trong mạng cục bộ từ bên ngoài mạng. (ánh xạ  1:1)

=> one to one

### 2.2 Dynamic NAT
![hinhanh2.2](/LinhNH/07.Timhieu_NAT/images/dynamic.png)  

Đây là loại NAT phổ biến được sử dụng để chuyển đổi một địa chỉ IP động trong mạng cục bộ sang một địa chỉ IP công cộng. Trong quá trình chuyển đổi, NAT sẽ tạo ra một bảng ánh xạ động giữa những địa chỉ IP tĩnh và địa chỉ IP công cộng, cho phép những thiết bị trong mạng cục bộ chia sẻ cùng một địa chỉ IP công cộng.

=> one to one 

### 2.3 PAT
![hinhanh2.3](/LinhNH/07.Timhieu_NAT/images/overloading.png)  

NAT Overload (Port Address Translation - PAT), là một dạng của Network Address Translation (NAT) mà cho phép nhiều địa chỉ IP tĩnh trong mạng nội bộ được ánh xạ tới một địa chỉ IP công cộng duy nhất bằng cách sử dụng các cổng khác nhau.

Khi một thiết bị trong mạng nội bộ yêu cầu truy cập mạng bên ngoài, router NAT sẽ ánh xạ địa chỉ IP và số cổng của thiết bị nội bộ tới một địa chỉ IP và một số cổng khác nhau trên địa chỉ IP công cộng. Các cổng này được sử dụng để phân biệt các kết nối khác nhau của các thiết bị nội bộ trên cùng một địa chỉ IP công cộng.

=> many to one

## 3. SNAT, DNAT

### 3.1 SNAT
![hinhanh3.1](/LinhNH/07.Timhieu_NAT/images/snat.png) 

SNAT (Source Network Address Translation) là một kỹ thuật dịch địa chỉ IP nguồn nói chung khi kết nối từ địa chỉ IP private sang địa chỉ IP public. Nó ánh xạ địa chỉ IP của máy khách nguồn trong yêu cầu tới bản dịch được xác định trên thiết bị BIG-IP. Đây là dạng NAT phổ biến nhất được sử dụng khi máy chủ nội bộ cần bắt đầu phiên tới máy chủ bên ngoài hoặc máy chủ công cộng.
### 3.2 DNAT
![hinhanh3.2](/LinhNH/07.Timhieu_NAT/images/dnat.png) 

DNAT (Destination Network Address Translation) là một kỹ thuật dịch địa chỉ IP đích nói chung khi kết nối từ địa chỉ IP public sang địa chỉ IP private. Nó thường được sử dụng để chuyển hướng các gói đến địa chỉ IP cụ thể hoặc cổng cụ thể trên địa chỉ IP, trên một máy chủ đơn giản đến một địa chỉ khác, chủ yếu trên máy chủ khác.


## 4. Cơ chế hoạt động


NAT sử dụng IP của chính nó làm IP công cộng cho mỗi máy con (client) với IP riêng. Khi một máy con thực hiện kết nối hoặc gửi dữ liệu tới một máy tính nào đó trên internet, dữ liệu sẽ được gởi tới NAT, sau đó NAT sẽ thay thế địa chỉ IP gốc của máy con đó rồi gửi gói dữ liệu đi với địa chỉ IP của NAT.

![hinhanh4](/LinhNH/07.Timhieu_NAT/images/coche_hoatdong.png) 

Máy tính từ xa hoặc máy tính nào đó trên internet khi nhận được tín hiệu sẽ gởi gói tin trở về cho NAT computer bởi vì chúng nghĩ rằng NAT computer là máy đã gởi những gói dữ liệu đi. NAT ghi lại bảng thông tin của những máy tính đã gởi những gói tin đi ra ngoài trên mỗi cổng dịch vụ và gởi những gói tin nhận được về đúng máy tính đó (client).
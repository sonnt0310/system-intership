# **Tìm hiểu về mô hình TCP/IP** 
# Mục lục
1. [Khái quát về mô hình TCP/IP](#1-khái-quát-về-mô-hìnhtcpip)
2. [Cấu trúc mô hình TCP/IP](#2-cấu-trúc-mô-hình-tcpip)  
    2.1 [Tầng vật lý](#21-tầng-vật-lý)  
    2.2 [Tầng mạng](#22-tầng-mạng)  
    2.3 [Tầng giao vận](#23-tầng-giao-vận)  
    2.4 [Tầng ứng dụng](#24-tầng-ứng-dụng)
3. [So sánh giữa mô hình OSI và TCP/IP](#3-so-sánh-giữa-mô-hình-osi-và-tcpip)
        

--------
## 1. Khái quát về mô hìnhTCP/IP
- **`TCP/IP`**  (Transmission Control Protocol/ Internet Protocol) là giao thức điều khiển để truyền nhận liên mạng. Đây là một bộ giao thức có chức năng truyền và kết nối các thông tin giữa các thiết bị trong một mạng lưới internet.

![hinh_1](/LinhNH/03.Timhieu_TCP_IP/images/TcpIP.png)
- **`Chức năng hoạt động`**
    - ***TCP*** : Giao thức kiểm soát truyền tải.
    
    Có chức năng xác định các ứng dụng và tạo ra các kênh giao tiếp. TCP cũng có chức năng quản lý các thông tin khi được chia nhỏ để truyền tải qua internet. Giao thức này sẽ tập hợp các thông tin này theo đúng thứ tự, đảm bảo truyền tải thông tin chính xác tới địa chỉ đến. 
    - ***IP*** : Giao thức Internet  

    Đảm bảo thông tin được truyền đến đúng địa chỉ. IP sẽ gán các địa chỉ và định tuyến từng gọi thông tin. Mỗi mạng sẽ có 1 địa chỉ IP để xác định được chính xác nơi chuyển/nhận thông tin, dữ liệu.  
## 2. Cấu trúc mô hình TCP/IP
- Mô hình TCP/IP tiêu chuẩn bao gồm 4 tầng được chồng lên nhau là:  
Tầng 1: Tầng vật lý (Network Access)  
Tầng 2: Tầng mạng (Internet)  
Tầng 3: Tầng giao vận (Transport)  
Tầng 4: Tầng ứng dụng (Application)      

![hinh_2](/LinhNH/03.Timhieu_TCP_IP/images/Layer.png)
### 2.1 Tầng vật lý
Đây là tầng thấp nhất trong mô hình TCP/IP, đóng vai trò truyền dữ liệu giữa 2 thiết bị trong cùng 1 mạng. Ở tầng này, toàn bộ gói dữ liệu sẽ được đóng vào khung (Frame) và được định tuyến đi đến đích đã được chỉ định ban đầu.  
**->** Lớp này là một nhóm phương thức vận hành trên một kết nối của máy chủ, thường được biết đến là Ethernet.
### 2.2 Tầng mạng
Đây là lớp kết nối các mạng nội bộ với nhau, còn được gọi là tầng Mạng. **Lớp Internet**  sẽ xử lý quá trình truyền gói tin trên mạng. Các giao thức của lớp này bao gồm:  
- IP – Internet Protocol  
- ICMP-Internet Control Message Protocol  
- IGMP- Internet Group Message Protocol
### 2.3 Tầng giao vận
Đây là lớp điều khiển giao tiếp máy chủ tới máy chủ, còn được gọi là Tầng giao vận.
Lớp truyền tải sẽ phụ trách luồng dữ liệu giữa 2 trạm thực hiện các ứng dụng của lớp trên. Lớp này có 2 giao thức chính là:  
- **TCP** – Transmission Control Protocol: cung cấp luồng dữ liệu tin cậy giữa 2 trạm nhờ nhiều cơ chế. Ví dụ như chia nhỏ các gói tin ở tầng trên thành các gói tin có kích thước thích hợp cho tầng mạng bên dưới, báo nhận gói tin, đặt hạn chế thời gian timeout để đảm bảo bên nhận biết được các gói tin đã gửi đi.  
- **UDP** – User Datagram Protocol: gửi dữ liệu từ trạm này tới trạm kia mà không đảm bảo các gói tin đến được tới đích.
### 2.4 Tầng ứng dụng   

Đây là một tập hợp các giao thức cụ thể giao tiếp dữ liệu trên một lớp quá trình tới quá trình.   
`Chức năng` :
- Nó cung cấp giao tiếp đến người dùng.
- Cung cấp các ứng dụng cho phép người dùng trao đổi dữ liệu ứng dụng thông qua các dịch vụ mạng khác nhau (như duyệt web, chat, gửi email,...).
- Dữ liệu khi đến đây sẽ được định dạng theo kiểu Byte nối Byte, cùng với đó là các thông tin định tuyến giúp xác định đường đi đúng của một gói tin.   

`Một số giao thức trao đổi dữ liệu` :

- **FTP** (File Transfer Protocol): giao thức chạy trên nền TCP cho phép truyền các file ASCII hoặc nhị phân theo 2 chiều.
- **TFTP** (Trival File Transfer Protocol) : giao thức truyền file chạy trên nền UDP.
- **SMTP** ( Simple Mail Transfer Protocol) : giao thức dùng để phân phối thư điện tử.
- **Telnet** : cho phép truy nhập từ xa để cấu hình thiết bị.
- **SNMP** (Simple Network Managerment Protocol) : Là ứng dụng chạy trên nền UDP , cho phép quản lý và giám sát các thiết bị mạng từ xa.
- **Domain Name System** ( DNS) : Là giao thức phân giải tên miền, được sử dụng trong hỗ trợ truy nhập Internet.

## 3. So sánh giữa mô hình OSI và TCP/IP
![hinh_3](/LinhNH/03.Timhieu_TCP_IP/images/So-sanh-osi-tcp-ip.png)

`Giống nhau` :  
- Cả 2 đều sử dụng mô hình kiến trúc phân lớp  
- Đều có tầng Application mặc dù dịch vụ khác nhau  
- Đều có tầng Transport, Network(ở mô hình TCP/IP là Internet)  
- Sử dụng kĩ thuật chuyển tin đóng gói Packet  

` Khác nhau` :

|Mô hình OSI| Mô hình TCP/IP|
|:---------:|:-------------:|
|Do ISO nghiên cứu và phát triển|Do ARPANET nghiên cứu và phát triển|
|Có sự phân biệt rõ ràng giữa các giao diện, dịch vụ và giao thức|Dịch vụ, giao diện và giao thức không có sự phân biệt|
|Liên quan với Kết nối hệ thống mở|Liên quan với Giao thức điều khiển truyền dẫn|
|OSI sử dụng nhiều lớp mạng|TCP/IP tiếp cận theo chiều ngang|
|Có tổng cộng 7 lớp|Có tổng cộng 4 lớp|
|Lớp truyền tải xác định hướng kết nối|Chỉ ra hướng kết nối và hướng không kết nối|
|Lớp liên kết phần cứng tách biệt với lớp liên kết phần mềm|Trong TCP, cả liên kết vật lý và dữ liệu đều được kết hợp dưới dạng một lớp máy chủ đến mạng|
|Các lớp phiên và trình bày là một phần của mô hình OSI|Không có lớp phiên và lớp trình bày|
|Xuất hiện sau khi có Internet|Xuất hiện trước khi có Internet|
|Header tối thiểu là 5 byte|Header tối thiểu là 20 byte|
-----------------

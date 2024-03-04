# Tìm hiểu về TCP/IP


## 1.Giới thiệu về TCP/IP

TCP/IP (Transmission Control Protocol/ Internet Protocol – Giao thức điều khiển truyền nhận/ Giao thức liên mạng), là một bộ giao thức trao đổi thông tin được sử dụng để truyền tải và kết nối các thiết bị trong mạng Internet. TCP/IP được phát triển để mạng được tin cậy hơn cùng với khả năng phục hồi tự động.

TCP/IP gồm hai phần chính:

- Transmission Control Protocol (TCP): Là một giao thức truyền tải đáng tin cậy được sử dụng để chia nhỏ và lắp ráp các gói dữ liệu trước khi chúng được gửi qua mạng. TCP đảm bảo rằng các gói dữ liệu được gửi đi sẽ đến đích một cách chính xác và đúng thứ tự. Nó xác định các kết nối, đồng bộ hóa truyền tải và quản lý lưu lượng dữ liệu.
- Internet Protocol (IP): Là một giao thức định tuyến và chuyển tiếp dữ liệu trong mạng. IP định danh và địa chỉ hóa các thiết bị trong mạng, đồng thời quản lý việc định tuyến (routing) các gói dữ liệu qua mạng. Giao thức này đảm bảo gói dữ liệu được gửi đến đúng đích và định vị các thiết bị trong mạng.

## 2.Các tầng trong TCP/IP

Mô hình TCP/IP gồm 4 tầng.


![image1](/HoangNH/3.TimhieuTCPIP/image/image1.png)


### 2.1.Tầng vật lý

Là tầng thấp nhất trong mô hình TCP/IP.Nó là sự kết hợp của tầng vật lý và liên kết dữ liệu trong mô hình OSI.

Tầng này chịu trách nhiệm truyền dữ liệu giữa các thiết bị trong cùng một mạng. Tại đây, các gói dữ liệu được đóng vào khung (Frame) và được định tuyến đi đến đích được chỉ định ban đầu.

### 2.2.Tầng mạng

Là tầng thứ hai trong mô hình TCP/IP. Tầng này chịu trách nhiệm truyền tải dữ liệu một cách logic trong mạng. 

Các phân đoạn dữ liệu sẽ được đóng gói (Packets) với kích thước mỗi gói phù hợp với mạng chuyển mạch mà nó dùng để truyền dữ liệu. Lúc này, các gói tin được chèn thêm phần Header chứa thông tin của tầng mạng và tiếp tục được chuyển đến tầng tiếp theo. 

Các giao thức chính trong tầng là IP, ICMP và ARP.


### 2.3.Tầng giao vận

Là tầng thứ ba trong mô hình TCP/IP. Tầng này chịu trách nhiệm duy trì liên lạc đầu cuối trên toàn mạng.

Tầng này có 2 giao thức chính:

- TCP (Transmission Control Protocol) cung cấp luồng dữ liệu tin cậy giữa 2 trạm nhờ nhiều cơ chế, đảm bảo chất lượng truyền gửi gói tin, nhưng tốn khá nhiều thời gian để kiểm tra đầy đủ thông tin từ thứ tự dữ liệu cho đến việc kiểm soát vấn đề tắc nghẽn lưu lượng dữ liệu.
- UDP (User Datagram Protocol) gửi dữ liệu từ trạm này tới trạm kia với tốc độ nhanh nhưng không đảm bảo các gói tin đến được tới đích.

### 2.4.Tầng ứng dụng

Là tầng thứ tư trong mô hình TCP/IP. Tầng này cung cấp giao tiếp đến người dùng, Cung cấp các ứng dụng cho phép người dùng trao đổi dữ liệu ứng dụng thông qua các dịch vụ mạng khác nhau (như duyệt web, chat, gửi email,...).

Dữ liệu khi đến đây sẽ được định dạng theo kiểu byte nối byte, cùng với đó là các thông tin định tuyến giúp xác định đường đi đúng của một gói tin.

Các giao thức phổ biến:

- FTP (File Transfer Protocol): giao thức chạy trên nền TCP cho phép truyền các file ASCII hoặc nhị phân theo 2 chiều.
- TFTP (Trival File Transfer Protocol) : giao thức truyền file chạy trên nền UDP.
- SMTP ( Simple Mail Transfer Protocol) : giao thức dùng để phân phối thư điện tử.
- Telnet : cho phép truy nhập từ xa để cấu hình thiết bị.
- NMP (Simple Network Managerment Protocol) : Là ứng dụng chạy trên nền UDP , cho phép quản lý và giám sát các thiết bị mạng từ xa.
- DNS (Domain Name System) : Là giao thức phân giải tên miền, được sử dụng trong hỗ trợ truy nhập Internet.
 
 
## 3. So sánh với mô hình OSI


![sosanh](/HoangNH/3.TimhieuTCPIP/image/sosanh.avif)

### 3.1.Điểm giống nhau

- Cả mô hình OSI và TCP/IP đều có cấu trúc các giao thức xếp chồng lên nhau theo các lớp.
- Cả hai đều được coi là mô hình logic.
- Hai mô hình phân chia các giao tiếp mạng thành các lớp rõ ràng.
- Cung cấp các tiêu chuẩn giúp cho nhà sản xuất tạo ra thiết bị. Hệ thống mạng có thể hoạt động, giao tiếp với các thiết bị, hệ thống được sản xuất từ nhà cung cấp khác.

### 3.2.Điểm khác nhau

- TCP/IP chỉ sử dụng tầng ứng dụng để xác định chức năng của các tầng trên. Trong khi đó, OSI sử dụng đến 3 tầng: tầng ứng dụng, tầng trình bày, tầng phiên.
- OSI cần sử dụng 2 tầng vật lý và liên kết dữ liệu để xác định các chức năng của tầng dưới cùng, TCP/IP chỉ sử dụng tầng mạng để thực hiện điều đó.
- Tầng mạng (Network) được mô hình OSI sử dụng để xác định các tiêu chuẩn và giao thức định tuyến. Chức năng này được quản lý bởi tầng mạng (Internet) trong TCP/IP.
- Mô hình TCP/IP là một tiêu chuẩn giao thức định hướng. Còn OSI là một mô hình chung dựa trên chức năng của mỗi lớp.
- Trong TCP/IP, các giao thức được phát triển trước mô hình. Còn đối với mô hình OSI thì ngược lại.
- TCP/IP giúp thiết lập kết nối giữa các thiết bị sử dụng với nhau. OSI giúp chuẩn hóa router, switch, bo mạch chủ và các phần cứng khác.

![bang](/HoangNH/3.TimhieuTCPIP/image/bang.avif)
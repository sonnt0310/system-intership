# 1 TCPdump là gì ?
TCPdump là một công cụ dòng lệnh mạnh mẽ dùng để bắt và phân tích các gói tin mạng trong hệ điều hành Linux/Unix

## 1.1. Mục đích sử dụng
- Bắt gói tin trên các giao diện mạng (network interface).

- Phân tích lưu lượng mạng để:

    - Gỡ lỗi kết nối mạng.

    - Kiểm tra bảo mật.

    - Theo dõi hoạt động bất thường.

- Kết hợp với các công cụ như Wireshark để phân tích sâu hơn.

## 1.2. Cách hoạt động
TCPdump hoạt động ở lớp liên kết dữ liệu (Data Link Layer), sử dụng thư viện libpcap để chặn và ghi lại các gói dữ liệu đi qua giao diện mạng.

# 2 Sử dụng tcpdump
## 2.1 Cài đặt TCPdump
Để sử dụng được lệnh tcpdump trên Linux, chúng ta phải cài một gói với tên tương tự.

Ở Ubuntu, ta dùng lệnh
```
sudo apt-get install tcpdump -y
```
Với CentOS
```
yum install tcpdump -y
```
## 2.2 Một vài lệnh cơ bản
a. Xem các Interface đang hoạt động
```
tcpdump -D
```
![alt text](<../images/TCPdump 1.png>)
b. Bắt gói tin trên Interface
```
tcpdump -i <INTERFACE>
```
Ví dụ

```
sudo tcpdump -i ens33
```
![alt text](<../images/TCPdump 2.png>)


Bấm tổ hợp phím Ctrl + C để dừng.

![alt text](<../images/TCPdump 3.png>)

Sau khi ta dừng, sẽ hiện ra một bảng với các thông số:

- Packet capture: số lượng gói tin bắt được và xử lý.
- Packet received by filter: số lượng gói tin được nhận bởi bộ lọc.
- Packet dropped by kernel: số lượng packet đã bị dropped bởi cơ chế bắt gói tin của hệ điều hành.

Định dạng chung của một dòng giao thức tcpdump là:
```
time-stamp src > dst:  flags  data-seqno  ack  window urgent options
```

- Time-stamp : hiển thị thời gian gói tin được capture.
- Src và dst : hiển thị địa IP của người gửi và người nhận.
- Cờ Flag
    - S(SYN) : Được sử dụng trong quá trình bắt tay của giao thức TCP.
    - (ACK) : Được sử dụng để thông báo cho bên gửi biết là gói tin đã nhận được dữ liệu thành công.
    - F(FIN) : Được sử dụng để đóng kết nối TCP.
    - P(PUSH) : Thường được đặt ở cuối để đánh dấu việc truyền dữ liệu.
    - R(RST) : Được sử dụng khi muốn thiết lập lại đường truyền.
- Data-sqeno : Số sequence number của gói dữ liệu hiện tại.
- ACK : Mô tả số sequence number tiếp theo của gói tin do bên gửi truyền (số sequence number mong muốn nhận được).
- Window : Vùng nhớ đệm có sẵn theo hướng khác trên kết nối này.
- Urgent : Cho biết có dữ liệu khẩn cấp trong gói tin.

## 2.3  Bắt n gói tin với tùy chọn -c
Sử dụng option -c thì bạn có thể yêu cầu nó bắt số gói tin nhất định.

Cú pháp như sau:
```
sudo tcpdump -c n -i ens33
```
![alt text](<../images/TCPdump 4.png>)

## 2.4 Bắt gói tin từ một cổng cụ thể:
|Lệnh|Mô tả|
|---|---|
|sudo tcpdump port 22| Gói liên quan SSH|
|sudo tcpdump tcp port 80|	Gói TCP cổng 80 (HTTP)|
|sudo tcpdump port 67 or port 68|DHCP (port 67, 68)|
|sudo tcpdump icmp|Ping (ICMP)|

## 2.5 Bắt gói theo giao thức TCP/UDP
|Lệnh|	Mô tả|
|---|---|
|sudo tcpdump tcp|	Chỉ gói TCP|
|sudo tcpdump udp|	Chỉ gói UDP| 

## 2.6 Bắt theo địa chỉ nguồn hoặc đích
Địa chỉ nguồn:
```
 tcpdump -i emp0s3 src 192.168.100.1
 ```
Địa chỉ đích:
```
 tcpdump -i emp0s3 dst 192.168.100.1
 ```
## 2.7 Lưu file .pcap (Wireshark)   
```
sudo tcpdump -i ens33 -w output.pcap
```
Ghi toàn bộ lưu lượng vào file output.pcap.
Mở file bằng Wireshark trên máy Windows
## 2.8 Đọc lại file pcap
```
tcpdump -r output.pcap
```
## 2.9 Kết hợp nhiều lệnh 
```
tcpdump tcp and port 22 and src host 192.168.1.5
```

- Bắt các gói TCP đến cổng 22 từ địa chỉ IP 192.168.1.5.
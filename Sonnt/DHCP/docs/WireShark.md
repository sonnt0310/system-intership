# Giới thiệu Wireshark


## 1.Giới thiệu

Wireshark là một công cụ kiểm tra, theo dõi và phân tích thông tin mạng. WireShark vượt trội về khả năng hỗ trợ các giao thức, từ những loại phổ biến như TCP, IP đến những loại đặc biệt như là AppleTalk và Bit Torrent.

## 2.Các tiện ích, đặc điểm của phần mềm Wireshark

- Giao diện đẹp thân thiện, dễ dùng.
- Là phần mềm miễn phí
- Cộng đồng người dùng tốt, năng động
- Hỗ trợ mọi hệ điều hành
- Capture với thông tin chi tiết
- Có thể mở và lưu trữ dữ liệu
- Có thể import, export những packet đến từ nhiều chương trình capture
- Lọc, tìm gói tin theo nhiều tiêu chuẩn
## 3. Cách sử dụng 

![alt text](<../images/WireShark 2.png>)
- Mở ứng dụng Wireshark trên máy tính.
- Chọn một giao diện mạng để chụp gói tin từ danh sách giao diện có sẵn.
- Để dùng Wireshark bắt gói tin, nhấp vào nút “Start” hoặc “Capture” để bắt đầu chụp gói tin trên giao diện đã chọn.
- Wireshark sẽ bắt đầu chụp các gói tin trên giao diện và hiển thị chúng trong cửa sổ chính.
## 4.Giao diện WireShark
![alt text](<../images/WireShark 1.png>)

![alt text](<../images/WireShark 3.png>)
- 1: Dừng công việc
- 2: Thực hiện lại công việc
- 3: Tô màu từng loại gói tin
- 4: Tự động cuộn khi có gói tin mới
- 5: Các gói tin đã được bắt


Kích đúp vào gói tin cần xem

![alt text](<../images/WireShark 4.png>)

- 1: Các thông số đã được Wireshare biên dịch sang dạng cleartext
- 2: Thông số HEX mà Wireshare bắt được

## 4 Lọc các gói tin
Lọc theo giao thức "TCP"
![alt text](<../images/WireShark 5.png>)

Chúng ta cũng có thể lọc với nhiều điều kiện bằng cách chuột phải vào giá trị của gói tin và chọn:

Ví dụ, chúng ta lọc gói tin với giao thức TCP với Destination như hình và chuột phải:

![alt text](<../images/WireShark 6.png>)

Cụ thể, ta tìm các gói có DES là 239.255.255.250 và theo giao thức UDP

![alt text](<../images/WireShark 7.png>)
## 5 Cách Color Coding trong phần mềm Wireshark:
![alt text](<../images/WireShark 8.png>)

- Wireshark sử dụng color coding để tô màu các gói tin dựa trên giao thức, trạng thái và các thuộc tính khác.
- Mỗi màu đại diện cho một giao thức cụ thể hoặc loại gói tin.
- Có thể xem thông tin chi tiết về màu sắc và giao thức tương ứng trong phần Coloring Rules hoặc Coloring Options của công cụ này.
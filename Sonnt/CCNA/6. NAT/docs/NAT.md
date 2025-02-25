# 1. NAT là gì?

NAT (Network Address Translation) là một kỹ thuật cho phép chuyển đổi từ một địa chỉ IP này thành một địa chỉ IP khác. Thông thường NAT được sử dụng phổ biến trong mạng sử dụng địa chỉ cục bộ, cần truy cập đến mạng công cộng (Internet). Vị trí thực hiện NAT là Router biên kết nối giữa 2 mạng.

![alt text](../images/NAT-la-gi-.jpg)

# 2. Phân loại NAT
## 2.1 NAT tĩnh - Static NAT

- NAT tĩnh hay còn gọi là Static NAT là phương thức NAT một đổi một. Nghĩa là một địa chỉ IP cố định trong LAN sẽ được ánh xạ ra một địa chỉ IP Public cố định trước khi gói tin đi ra Internet. Phương pháp này không nhằm tiết kiệm địa chỉ IP mà chỉ có mục đích ánh xạ một IP trong LAN ra một IP Public để ẩn IP nguồn trước khi đi ra Internet làm giảm nguy cơ bị tấn công trên mạng.

- Kỹ thuật này thường được sử dụng để chuyển đổi từ địa chỉ IP này sang địa chỉ khác một cách cố định, và thường là từ một địa chỉ private sang một địa chỉ public. Toàn bộ quá trình này được cài đặt thủ công, địa chỉ IP được ánh xạ tĩnh với nhau thông qua các lệnh cấu hình.

## 2.2 NAT động - Dynamic NAT

- NAT được thực hiện 1 cách tự động. Trên Router, người quản trị cấu hình 1 danh sách các địa chỉ bên trong cần đi ra ngoài Internet và 1 danh sách các địa chỉ bên ngoài đại diện cho các địa chỉ bên trong. Tiếp theo, người quản trị cấu hình yêu cầu Router NAT danh sách bên trong thành danh sách bên ngoài. Bảng NAT của Router sẽ không có bất kỳ 1 dòng thông tin NAT nào được tạo sẵn mà các dòng thông tin NAT sẽ chỉ được tạo ra khi có gói tin đến Router ra Internet.

- Dynamic NAT phức tạp hơn so với Static, chúng phải lưu giữ các thông tin kết nối và thậm chí phải tìm thông tin của TCP trong packet. Do mức độ phức tạp cao hơn, nên Dynamic NAT chỉ dùng thay Static NAT với mục đích bảo mật. Những người bên ngoài không thể tìm ra IP kết nối với host chỉ định vì tại thời điểm tiếp theo host này có thể nhận một IP hoàn toàn khác.

## 2.3 NAT Overload - PAT
- NAT Overload - PAT là giải pháp được dùng nhiều nhất đặc biệt là trong các Modem ADSL, đây là giải pháp mang lại cả hai ưu điểm của NAT đó là: ẩn địa chỉ IP trong hệ thống mạng nội bộ trước khi gói tin đi ra Integiằm giảm thiểu nguy cơ tấn công trên mạng tiết kiệm không gian địa chỉ IP. Bản chất PAT là kết hợp IP Public và số hiệu cổng (port) trước khi đi ra Internet. Lúc này mỗi IP trong LAN khi đi ra Internet sẽ được ánh xạ ra một IP Public kết hợp với số hiệu cổng.

![alt text](<../images/phân loại NAT.png>)

# 3. Cách hoạt động của NAT 

NAT xử lý một gói tin xuất phát từ bên trong đi ra bên ngoài một mạng theo cách thức sau:

- Khi NAT nhận một gói tin từ một cổng bên trong, gói tin này đáp ứng các tiêu chuẩn để NAT, Router sẽ tìm kiếm trong bảng NAT địa chỉ bên ngoài của gói tin. Nói cách khác, tiến trình NAT tìm kiếm một hàng ở trong bảng NAT trong đó địa chỉ outside local address bằng với địa chỉ đích của gói tin. Nếu không có phép so sánh trùng nào được tìm thấy, gói tin đó sẽ bị loại bỏ.

- Nếu có một hàng trong bảng NAT là tìm thấy, trong hàng này địa chỉ đích của gói tin bằng với địa chỉ outside local, NAT sẽ thay thế địa chỉ đích trong gói tin bằng địa chỉ outside global theo thông tin trong bảng NAT.

- Tiến trình NAT tiếp tục tìm kiếm bảng NAT để xem có một địa chỉ Inside local nào bằng với địa chỉ nguồn của gói tin hay không. Nếu có một hàng là tìm thấy, NAT tiếp tục thay thế địa chỉ nguồn của gói tin bằng địa chỉ Inside global. Nếu không có một hàng nào được tìm thấy, NAT sẽ tạo ra một hàng mới trong bảng NAT và chèn địa chỉ mới vào trong gói tin.

- Nếu không có hàng nào trong bảng NAT được tìm thấy, gói tin sẽ bị loại bỏ. Nếu có một hàng tìm thấy trong bảng NAT thì nó sẽ thay thế địa chỉ đích bằng địa chỉ Inside local từ bảng NAT.

- Router tìm kiếm bảng NAT để tìm ra địa chỉ Outside global bằng với địa chỉ nguồn của gói tin. Nếu có một hàng là tìm thấy, NAT sẽ thay thế địa chỉ đích bằng địa Outside local từ bảng NAT. Nếu NAT không tìm thấy một hàng nào, nó sẽ tạo ra một hàng mới trong bảng NAT và cũng thực hiện như ở bước 2.

# 4. Thuật ngữ liên quan về NAT

![alt text](<../images/Thuật ngữ lq NAT.png>)

- Địa chỉ Inside Local

    - Đây là địa chỉ IP được đặt cho 1 thiết bị ở mạng nội bộ bên trong. Nó không được cung cấp bởi NIC (Network Information Center)

- Địa chỉ Inside Global

    - Đây là địa chỉ IP đã được đăng ký tại NIC. Địa chỉ inside global thường được dùng để thay thế cho địa chỉ IP inside local

- Địa chỉ Outside Local

    - Đây là địa chỉ IP của một thiết bị nằm ở mạng bên ngoài. Các thiết bị thuộc mạng bên trong sẽ tìm thấy thiết bị thuộc mạng bên ngoài thông qua địa chỉ IP này. Địa chỉ outside local không nhất thiết phải được đăng ký với NIC. Nó hoàn toàn có thể là một địa chỉ Private

- Địa chỉ Outside Global

    - Đây là địa chỉ IP được đặt cho một thiết bị nằm ở mạng bên ngoài. Địa chỉ này là một IP hợp lệ trên mạng internet

# 5. Ưu điểm và nhược điểm của NAT
- **Về ưu điểm**

    - Tiết kiệm địa chỉ IPv4: Lượng người dùng truy cập internet ngày càng tăng cao. Điều này dẫn đến nguy cơ thiếu hụt địa chỉ IPv4. Kỹ thuật NAT sẽ giúp giảm thiểu được số lượng địa chỉ IP cần sử dụng

    - Giúp che giấu IP bên trong mạng LAN

    - NAT có thể chia sẻ kết nối internet cho nhiều máy tính, thiết bị di động khác nhau trong mạng LAN chỉ với một địa chỉ IP public duy nhất

    - NAT giúp nhà quản trị mạng lọc được các gói tin đến và xét duyệt quyền truy cập của IP public đến 1 port bất kỳ

- **Về nhược điểm**

    - Khi dùng kỹ thuật NAT, CPU sẽ phải kiểm tra và tốn thời gian để thay đổi địa chỉ IP. Điều này làm tăng độ trễ trong quá trình switching. Làm ảnh hưởng đến tốc độ đường truyền của mạng internet

    - NAT có khả năng che giấu địa chỉ IP trong mạng LAN nên kỹ thuật viên sẽ gặp khó khăn khi cần kiểm tra nguồn gốc IP hoặc truy tìm dấu vết của gói tin

    - NAT giấu địa chỉ IP nên sẽ khiến cho 1 vài ứng dụng cần sử dụng IP không thể hoạt động được

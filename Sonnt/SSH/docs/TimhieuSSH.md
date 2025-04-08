# Tìm hiểu SSH
## 1. SSH là gì ?

SSH tên đầy đủ là Secure SHell là một giao thức mạng mang tính bảo mật, cung cấp cách thức truy cập từ xa vào một thiết bị khác một cách an toàn thông qua các cơ chế mã hóa. Bằng cách sử dụng một số kỹ thuật mã hóa, xác thực mỗi bên với nhau để đảm bảo dữ liệu trao đổi giữa các máy trong phiên làm việc được mã hóa và giải mã nhằm mục đích giữ vững tính toàn vẹn của dữ liệu và bảo vệ an ninh thông tin.


## 2. Quá trình hoạt động của SSH 
- SSH hoạt động theo mô hình client-server để xác thực hai bên và mã hóa dữ liệu giữa chúng. Client sẽ là thành phần tạo phiên kết nối SSH đến thành phần khác, còn Server sẽ cho phép Client mở phiên SSH kết nối vào chính mình.

![alt text](../images/SSH_2.png)

- Kết nối ban đầu: Máy khách (client) gửi yêu cầu kết nối đến máy chủ (server) thông qua cổng SSH (thường là cổng 22).

- Xác thực danh tính:

    - Máy chủ gửi khóa công khai của nó đến máy khách.

    - Máy khách sử dụng khóa công khai này để xác minh danh tính của máy chủ.

    - Máy khách có thể sử dụng mật khẩu hoặc cặp khóa (private key/public key) để xác thực với máy chủ.

- Thiết lập kênh mã hóa: Sau khi xác thực thành công, cả hai bên sẽ thiết lập một kênh truyền dữ liệu mã hóa bằng các thuật toán như AES hoặc RSA để đảm bảo rằng dữ liệu được bảo vệ.

- Giao tiếp an toàn:

    - Máy khách và máy chủ sử dụng kênh mã hóa này để truyền dữ liệu, lệnh, hoặc file.

    - Mọi dữ liệu đi qua kênh SSH đều được mã hóa, giúp tránh việc bị đánh cắp hoặc sửa đổi.

## 3. Giao thức SSH được dùng ở rất nhiều nền tảng từ Linux, macOs, Windows với các mục đích như:

- Đăng nhập vào shell của máy tính từ xa (máy chủ)
- Thi hành lệnh trên máy kết nối
- Thiết lập tự động đăng nhập vào server
- Truyền tải file an toàn
- Gắn một thư mục ở máy từ xa (máy chủ) vào máy client

## 4. SSH key
- SSH key (Secure Shell key) là một cặp mã hóa bao gồm một khóa riêng tư (private key) và một khóa công khai (public key) được sử dụng trong giao thức SSH để xác thực và bảo mật quá trình truyền tải dữ liệu và đăng nhập từ xa vào các máy chủ. SSH key thường được sử dụng để thay thế việc nhập mật khẩu khi kết nối đến một máy chủ từ xa.

- Public Key (Khóa công khai)
Đây là phần của cặp khoá SSH được đặt trên máy chủ hoặc bất kỳ thiết bị mạng nào mà người dùng muốn truy cập. Public Key thường được chia sẻ và phân phối một cách an toàn vì nó không bao gồm thông tin nhạy cảm của người dùng.

- Private Key (Khóa cá nhân)
Đây là phần mật của cặp khoá SSH mà người dùng giữ bí mật trên máy tính hoặc thiết bị cá nhân. Mọi thông tin liên quan đến Private Key cần được bảo vệ chặt chẽ vì nó đóng vai trò quan trọng trong quá trình xác thực và truy cập.

### Cách hoạt động của SSH key


![alt text](<../images/SSH key_1.png>)

Bước 1: Client khởi tạo kết nối SSH
- Client gửi yêu cầu kết nối đến SSH Server, yêu cầu xác thực bằng khóa công khai (Public Key Authentication).

- Thông báo cho Server biết rằng Client muốn đăng nhập bằng khóa công khai (không phải mật khẩu).

Bước 2: Server kiểm tra Public Key
- Server kiểm tra xem Public Key của Client có nằm trong ~/.ssh/authorized_keys không.
- Nếu có, Server gửi một thông điệp ngẫu nhiên (challenge) đến Client.
- Đảm bảo rằng Client có khóa riêng (Private Key) tương ứng với Public Key đã lưu trên Server.

Bước 3: Client mã hóa thông điệp bằng Private Key
- Client dùng Private Key để mã hóa thông điệp (challenge) nhận được từ Server.
- Client gửi thông điệp đã mã hóa ngược lại cho Server.
- Chứng minh Client sở hữu Private Key mà không cần gửi nó qua mạng.
- Private Key KHÔNG BAO GIỜ rời khỏi máy Client.

Bước 4: Client gửi lại thông điệp đã mã hóa đến Server.

Bước 5: Server giải mã và xác thực
-Server dùng Public Key của Client (trong authorized_keys) để giải mã thông điệp.

- Nếu nội dung sau giải mã khớp với thông điệp gốc (challenge), xác thực thành công.


- Chỉ ai có Private Key hợp lệ mới có thể tạo ra thông điệp chính xác.

- Ngăn chặn kẻ xấu giả mạo, vì Public Key chỉ có thể giải mã thông điệp, không thể tạo ra nội dung hợp lệ.

Bước 6: Server cấp quyền đăng nhập

- Nếu xác thực thành công, Server cho phép Client đăng nhập.

- Nếu xác thực thất bại, kết nối bị từ chối.


## 5. Các kỹ thuật mã hóa SSH

### 5.1 Symmetrical Encryption
- Là một dạng mã hóa sử dụng secret key (chìa khóa bí mật) ở cả 2 chiều mã hóa và giải mã tin nhắn bởi cả host và client. Quá trình tạo symmetric key được thực hiện bởi key exchange algorithm. Khi thực hiện kỹ thuật này, chỉ những người có chìa khóa (mật khẩu) mới có thể giả mã tin nhắn trong quá trình chuyển.

- Lưu ý, key không được truyền giữa client và host. Thay vào đó, cả 2 máy tính chia sẻ thông tin chung và sau đó sử dụng chúng để tính ra khóa bí mật. Điều này đảm bảo, dù có bị máy tính khác bắt được đường truyền chung thì thông tin vẫn được an toàn vì không tính được thuật toán tạo key.

### 5.2 Asymmetrical Encryption
- Asymmetrical encryption sử dụng 2 khóa khác nhau là public key và private key để mã hóa và giải mã. Hay còn biết đến là cặp khóa public-private key pair. Giống như tên gọi, khóa public sẽ được công khai cho tất cả các bên liên quan còn private key phải luôn luôn được đảm bảo an toàn.

- Asymmetrical Encryption chỉ được sử dụng trong quá trình trao đổi thuật toán của khóa của symmetric encryption, server sử dụng public key của client để tạo, challenge và truyền nó tới client để chứng thực. Nếu client giải mã được thông tin nghĩa là nó đang giữa đúng private key cần thiết.

### 5.3 Hashing
- Hashing được SSH sử dụng để  để xác nhận tính xác thực của tin nhắn. Bằng cách tạo ra một giá trị duy nhất với độ dài nhất định cho mỗi lần nhập liệu mà không có hướng nào khác để khai thác.

- SSH được thực hiện bởi HMACs, đảm bảo lệnh không bị giả mạo bởi bất kỳ phương thức nào.


# 1.FTP là gì ?

FTP (File Transfer Protocol) là một giao thức mạng chuẩn dùng để truyền tải tập tin (file) giữa máy khách (client) và máy chủ (server) qua mạng TCP/IP (thường là Internet hoặc mạng nội bộ).

FTP sử dụng 2 cổng gồm:

Cổng 20 để truyền dữ liệu (data port)

Cổng 21 dùng để truyền câu lệnh (command port)

Hoạt động theo mô hình Server-Client.

## Các loại FTP phổ biến
Trong những năm qua, giao thức FTP đã được sửa đổi và cập nhật thường xuyên để đáp ứng các yêu cầu mới, tiêu chuẩn bảo mật và đồng thời duy trì khả năng tương thích với các hệ thống hiện đại. Dưới đây là ba loại FTP phổ biến:

- **FTP Plain:** Đây là cấu hình tiêu chuẩn của giao thức, trong đó dữ liệu và thông tin đăng nhập của người dùng được chuyển tải mà không có bất kỳ mã hóa nào. FTP Plain thường sử dụng cổng số 21 khi kết nối internet và có khả năng tương thích mạnh mẽ nhất trong số ba loại FTP.
- **FTPS (FTP Secure):** FTPS là viết tắt của FTP Secure Sockets Layer (SSL), sử dụng mã hóa SSL, khác biệt với FTP truyền thống. FTPS có một số điểm khác biệt so với các loại FTP được mã hóa khác, nhưng điểm đáng chú ý nhất là tính bảo mật của nó. Loại FTP này sẽ bổ sung một số lệnh vào FTP truyền thống để cung cấp các chức năng bảo mật đặc biệt.
- **FTPES (File Transfer Protocol over explicit transport layer security TLS/SSL):** FTPES sử dụng cổng 21 như một kết nối FTP thông thường, nhưng các lệnh đặc biệt sẽ biến nó thành một kết nối được mã hóa TLS/SSL. Nhiều người dùng ưa chuộng FTPES hơn FTPS do khả năng tương thích tốt với tường lửa.

## Ưu điểm và nhược điểm của FTP

### Ưu điểm

- Cho phép truyền nhiều tin cùng 1 lúc.
- Cho phép chuyển tệp tin nếu không may mất kết nối.
- Tự động chuyển tập tin bằng các Script.
- Cho phép thêm dữ liệu vào khung chờ, và lên lịch truyền.
- Khả năng đồng bộ hoá tệp tin.
### Nhược điểm

- Khả năng bảo mật kém.
- Không phù hợp cho các tổ chức, do yêu cầu phải tạo cổng kết nối khi truyền.
- Máy chủ có khả năng bị qua mặt, gửi thông tin đến các cổng ngẫu nhiên.

# 2.FTP để làm gì?

FTP được sử dụng cho nhiều mục đích, bao gồm:

| **Ứng dụng**                         | **Chi tiết**                                                                 |
|--------------------------------------|------------------------------------------------------------------------------|
| **Tải tập tin lên hoặc xuống từ máy chủ** | Người dùng có thể tải tài liệu, hình ảnh, phần mềm… từ server hoặc upload dữ liệu lên. |
| **Quản lý file website**             | Quản trị viên web dùng FTP để cập nhật, chỉnh sửa, xóa file trên website (đặc biệt phổ biến với website WordPress, HTML tĩnh…). |
| **Chuyển dữ liệu giữa các hệ thống**| Trong các hệ thống tự động, FTP được dùng để trao đổi dữ liệu giữa các server hoặc các tổ chức. |
| **Sao lưu dữ liệu**                  | Tự động sao lưu file từ máy tính cục bộ lên server FTP để đảm bảo an toàn dữ liệu. |

# 3.Mô hình FTP
FTP không chỉ cần một kết nối TCP mà các mô hình FTP được thiết kế xung quanh 2 kênh logic trong quá trình giao tiếp giữa client FTP và server FTP là control connection và data connection:

- Control connection: Đây là kết nối TCP logic chính được tạo ra khi phiên làm việc được thiết lập. Nó được duy trì trong suốt phiên làm việc và chỉ cho các thông tin điều khiển đi qua ví dụ như lệnh và trả lời. Nó không được sử dụng để gửi dữ liệu.

- Data connection: Mỗi khi dữ liệu được gửi từ sever tới client hoặc ngược lại, một kết nối dữ liệu TCP riêng biệt được thiết lập giữa chúng. Dữ liệu được truyền qua kết nối này. Khi hoàn tất việc truyền dữ liệu, kết nối được hủy bỏ.
![alt text](<../images/FTP 1.png>)

![alt text](<../images/FTP 2.png>)
- Thành phần protocol interpreter (PI): Là thành phần quản lý kênh điều khiển, phát và nhận lệnh và trả lời.

- Thành phần data transfer process (DTP): chịu trách nhiệm gửi và nhận dữ liệu giữa client và server.

- Ngoài hai thành phần trên, tiến trình bên phía người dùng còn có 1 thành phần thứ ba là giao diện người dùng (user interface) dùng để tương tác với người dùng FTP, thành phần này không có ở phía sever.

## Tiến trình bên phía server:

- Server Protocol Interpreter (Server-PI): chịu trách nhiệm quản lý điều khiển kết nối trên server. Nó lắng nghe yêu cầu kết nối hướng từ users trên cổng dành riêng. Khi kết nối đã được thiết lập,nó nhận lện từ User-PI, gửi trả lời lại và quản lí tiến trình truyền dữ liệu trên server.

- Server Data Transfer Process (Server-DTP): Làm nhiệm vụ gửi hoặc nhận file từ bộ phận User-DTP. Server DTP vừa làm nhiệm vụ thiết lập kết nối kênh dữ liệu và lắng nghe một kết nối kênh dữ liệu từ user. Nó tương tác với server file trên hệ thống cục bộ để đọc và chép file.

## Tiến trình bên phía client

- User Interface: Đây là chương trình được chạy trên máy tính,nó cung cấp giao diện xử lí cho người dùng. Nó cho phép sử dụng các lệnh đơn giản hướng tới người dùng, và cho phép người điều khiển phiên FTP theo dõi được các thông tin và kết quả xảy ra trong tiến trình.

- User Protocol Interpreter (User-PI): Chịu trách nhiệm quản lý kênh điều khiển phía Client. Nó khởi tạo phiên kết nối FTP bằng việc phát hiện ra yêu cầu tới phía server-PI. Khi kết nối đã được thiết lập, nó xử lí các lệnh nhận được trên giao diện người dùng, gửi chúng tới Server-PI, và nhận phản hồi trở lại. Nó cũng quản lý tiến trình User-DTP.

- User Data Transfer Process (User-DTP): là bộ phận DTP nằm ở phía người dùng, làm nhiệm vụ gửi hoặc nhận dữ liệu từ Server-DTP. User-DTP có thể thiết lập hoặc lắng nghe yêu cầu kết nối kênh dữ liệu trên server. Nó tương tác với thiết bị lưu trữ file phía client.

## Quá trình Thiết lập Kết nối và Xác thực Người dùng trong FTP

Khi một **FTP Client** muốn kết nối với một **FTP Server**, quá trình thiết lập kết nối và xác thực diễn ra tuần tự như sau:
![alt text](<../images/FTP 3.png>)
---

### Bước 1–2: Thiết lập kết nối TCP

- **Client (Bước 1):** Gửi yêu cầu thiết lập kết nối TCP tới server, thông qua cổng mặc định là **21**.
- **Server (Bước 2):** Chấp nhận kết nối và phản hồi với mã trạng thái:
  - `220 Service ready`: Máy chủ đã sẵn sàng tiếp nhận lệnh FTP.

---

###  Bước 3–4: Gửi tên người dùng (USER)

- **Client (Bước 3):** Sau khi nhận được mã `220`, client gửi lệnh:
  - `USER <tên người dùng>` – đây có thể là tài khoản được cấp phát hoặc "anonymous" nếu server cho phép truy cập ẩn danh.
- **Server (Bước 4):** Xử lý tên người dùng và trả về:
  - `331 User name okay, need password`: Tên người dùng hợp lệ, yêu cầu gửi mật khẩu.

---

###  Bước 5–6: Gửi mật khẩu (PASS)

- **Client (Bước 5):** Gửi lệnh:
  - `PASS <mật khẩu>` – mật khẩu tương ứng với username đã nhập.
- **Server (Bước 6):** Xác minh mật khẩu:
  - Nếu đúng: trả về `230 User logged in, proceed` → cho phép truy cập.
  - Nếu sai: trả về lỗi như `530 Not logged in`.

---

###  Bước 7: Xác thực thành công

- **Client (Bước 7):** Nhận mã `230`, xác nhận người dùng đã đăng nhập thành công và có thể thực hiện các lệnh FTP tiếp theo như:
  - `LIST`, `RETR`, `STOR`, `DELE`...

---

##  Tóm tắt mã trạng thái FTP trong quá trình kết nối

| Mã trạng thái | Ý nghĩa                                   |
|---------------|--------------------------------------------|
| `220`         | Service ready – Server sẵn sàng            |
| `331`         | User name OK – Yêu cầu nhập mật khẩu       |
| `230`         | User logged in – Đăng nhập thành công       |
| `530`         | Not logged in – Tên người dùng/mật khẩu sai |

---

##  Ghi chú:

- FTP hoạt động trên **giao thức TCP**, đảm bảo độ tin cậy khi truyền dữ liệu.
- **FTP không mã hóa** dữ liệu hoặc thông tin xác thực → dễ bị nghe lén (sniffing).
  - Để an toàn hơn, nên dùng **FTPS** (có SSL/TLS) hoặc **SFTP** (qua SSH).


# Sử dụng các lệnh cơ bản của FTP với FTP Server đã dựng


Các lệnh FTP cơ bản
## Khi bạn kết nối tới một FTP server thông qua dòng lệnh (command line) hoặc một FTP client, Các lệnh FTP cơ bản:

**1. Kết nối và xác thực**

- ```open <địa_chỉ_server>```: Mở kết nối tới FTP server. Ví dụ: open ftp.example.com.

- ```user <tên_người_dùng>```: Đăng nhập với tên người dùng. Ví dụ: user myusername.

- ```pass <mật_khẩu>```: Nhập mật khẩu cho người dùng.

- ```anonymous```: Đăng nhập ẩn danh (nếu server hỗ trợ).

- ```close hoặc disconnect```: Ngắt kết nối với server nhưng vẫn ở trong chương trình FTP.

- ```bye hoặc quit```: Thoát hoàn toàn khỏi chương trình FTP.

**2. Quản lý tệp và thư mục**

- ```ls hoặc dir```: Liệt kê danh sách tệp và thư mục trên server.

- ```cd <tên_thư_mục>```: Chuyển đến thư mục được chỉ định. Ví dụ: cd public_html.

- ```cdup```: Chuyển lên thư mục mẹ.

- ```pwd```: Hiển thị thư mục hiện tại trên server.

- ```mkdir <tên_thư_mục>```: Tạo thư mục mới trên server. Ví dụ: mkdir newfolder.

- ```r```mdir <tên_thư_mục>```: Xóa thư mục trên server.

- ```delete <tên_tệp>```: Xóa tệp trên server. Ví dụ: delete file.txt.

**3. Tải tệp**
- ```get <tên_tệp>```: Tải tệp từ server về máy cục bộ. Ví dụ: get file.txt.

- ```mget <mẫu_tệp>```: Tải nhiều tệp theo mẫu. Ví dụ: mget *.txt.

- ```put <tên_tệp>```: Tải tệp từ máy cục bộ lên server. Ví dụ: put file.txt.

- ```mput <mẫu_tệp>```: Tải nhiều tệp lên server. Ví dụ: mput *.txt.

**4. Chuyển đổi chế độ truyền**

- ```ascii```: Chuyển sang chế độ truyền ASCII (dành cho tệp văn bản).

- ```binary```: Chuyển sang chế độ truyền nhị phân (dành cho tệp hình ảnh, video, hoặc tệp nén).

- ```type```: Kiểm tra chế độ truyền hiện tại.

**5. Các lệnh khác**
- ```help hoặc ?```:``` Hiển thị danh sách các lệnh FTP được hỗ trợ.

- ```status```: Hiển thị trạng thái kết nối và cấu hình hiện tại.

- ```prompt```: Bật/tắt chế độ hỏi xác nhận khi tải nhiều tệp (mget/mput).

- ```hash```: Hiển thị dấu # để theo dõi tiến trình truyền tệp.


## Sử dụng lệnh ```help``` hoặc ```?``` để hiển thị tất cả lệnh có sẵn với giao thức FTP.

![alt text](<../images/Command 1.png>)

##  Lệnh status 
![alt text](<../images/Command 2.png>)
# Các loại user trong Linux

Khi một máy tính đuợc sử dụng bởi nhiều người, trong cùng một thời điểm, việc chia riêng biệt những người dùng đó ra là một điều cần thiết. Điều này quan trọng ngay cả khi chỉ có duy nhất một người sử dụng máy tại một thời điểm. Do đó , mỗi người dùng sẽ có một username độc nhất, và username đó đuợc sử dụng để đăng nhập.


## Super user(Root User)

Root User là tài khoản có quyền cao nhất trong hệ thống, có thể thực hiện mọi thao tác, bao gồm:

- Cài đặt/gỡ bỏ phần mềm.
- Quản lý tất cả các file, thư mục, và người dùng khác.
- Thay đổi cấu hình hệ thống.
- Chạy mọi lệnh mà không bị hạn chế.

## Regular user

- Regular User là tài khoản được tạo ra để sử dụng hệ thống nhưng không có quyền quản trị.
- Không thể thay đổi file hệ thống quan trọng.
- Chỉ có quyền trên thư mục và file của chính họ (/home/username).
- Cần dùng sudo để thực hiện lệnh yêu cầu quyền root.

## System User (Người dùng hệ thống)
System User là những tài khoản đặc biệt được tạo tự động khi cài đặt hệ điều hành để chạy các dịch vụ hệ thống như:

- www-data (Web Server như Apache, Nginx)
- mysql (Cơ sở dữ liệu MySQL)
- postfix (Dịch vụ mail)

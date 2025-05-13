# Cấu trúc file và thư mục
## Hệ thống file 
- Trong hệ thống Linux, tất cả đều được cấu hình và coi như là file. Không chỉ bao gồm file text, ảnh, các chương trình biên dịch mà còn cả các thư mục, phân vùng và drive thiết bị phần cứng đều được hệ thống nhìn nhận như một file.

- Tất cả các file và thư mục đều xuất hiện trong thư mục root, kể cả khi các thư mục còn lại được lưu trong các thiết bị vật lý khác nhau (trên ổ cứng khác, hoặc trên ổ cứng của máy tính khác)

- Với nhân Linux, hệ thống file là phẳng. Nghĩa là - nó không là một cấu trúc phân cấp, phân biệt giữa các thư mục , tệp tin, hoặc các chương trình. Thay vào đó, kernel sử dụng khái niệm inode để đại diện cho từng file.

- Mỗi inode chứa thông tin về một file bao gồm: số inode của nó (nhận dạng duy nhất trong hệ thống), các chủ sở hữu và nhóm liên kết với file, loại file (file thông thường, hay file link liên kết hay thư mục, ...), quyền truy cập file, thời gian tạo file, kích thước tệp tin và địa chỉ nơi mà file được lưu trữ.

## Cấu trúc thư mục trong linux 
- Linux quản lý hệ thống trên một "hệ thống tệp tin" duy nhất, bắt đầu ở gốc là thư mục root (/) đây là thư mục ở cấp cao nhất. Cấu trúc cơ bản của hệ thống Linux như sau:

![alt text](../images/Linux_2.png)
 
Trên hệ điều hành Linux, cấu trúc thư mục được tổ chức theo một hệ thống phân cấp theo tên gọi hợp lý để dễ dàng quản lý các tài nguyên hệ thống.

## 1. Cấu trúc thư mục chính

| **Thư mục**  | **Mô tả** |
|-------------|----------|
| `/` (root)  | Thư mục gốc của hệ thống tệp. |
| `/bin`      | Chứa các lệnh cơ bản như `ls`, `cp`, `mv`, `cat`… |
| `/boot`     | Chứa các tệp khởi động như kernel và bootloader (GRUB). |
| `/dev`      | Chứa tệp thiết bị, đại diện cho phần cứng như ổ đĩa (`/dev/sda`). |
| `/etc`      | Chứa các tệp cấu hình hệ thống. |
| `/home`     | Thư mục chứa dữ liệu cá nhân của từng user. |
| `/lib`      | Chứa thư viện hệ thống cần thiết cho `/bin` và `/sbin`. |
| `/media`    | Điểm gắn kết (mount) thiết bị bên ngoài như USB, CD/DVD. |
| `/mnt`      | Thư mục tạm để mount hệ thống tệp bên ngoài. |
| `/opt`      | Chứa phần mềm do người dùng cài đặt. |
| `/proc`     | Hệ thống tệp ảo cung cấp thông tin về tiến trình và hệ thống. |
| `/root`     | Thư mục cá nhân của user `root`. |
| `/sbin`     | Chứa các lệnh quản trị hệ thống (`fdisk`, `ifconfig`). |
| `/srv`      | Chứa dữ liệu của các dịch vụ máy chủ (web server, FTP server). |
| `/tmp`      | Chứa tệp tạm thời, bị xóa sau khi khởi động lại hệ thống. |
| `/usr`      | Chứa các chương trình, thư viện dùng chung. |
| `/var`      | Chứa dữ liệu thay đổi thường xuyên như log, cache, mail. |

---

## 2. Các tệp quan trọng trong `/etc`

| **Tệp**        | **Chức năng** |
|---------------|-------------|
| `exports`     | Cấu hình chia sẻ file qua **NFS**. |
| `fstab`       | Xác định phân vùng nào sẽ được **mount** tự động. |
| `group`       | Chứa thông tin về nhóm người dùng. |
| `hosts`       | Ánh xạ hostname với địa chỉ IP. |
| `inittab`     | Cấu hình tiến trình khởi động (dùng trong `SysVinit`). |
| `passwd`      | Chứa danh sách tài khoản người dùng. |
| `shadow`      | Chứa thông tin mật khẩu đã mã hóa. |
| `X11`         | Cấu hình hệ thống đồ họa X-Windows. |

---

## 3. Các thư mục con trong `/usr`

| **Thư mục**  | **Mô tả** |
|-------------|----------|
| `/usr/bin`  | Các lệnh không thiết yếu nhưng hữu ích. |
| `/usr/include` | Các tệp tiêu đề (`.h`) cho lập trình. |
| `/usr/local` | Chứa dữ liệu cục bộ của hệ thống. |
| `/usr/lib`  | Thư viện dùng chung cho `/usr/bin`. |
| `/usr/sbin` | Chứa các lệnh quản trị không thiết yếu. |
| `/usr/share` | Dữ liệu chia sẻ như tài liệu, icons, fonts… |

---

## 4. Các thư mục con trong `/var`

| **Thư mục**  | **Mô tả** |
|-------------|----------|
| `/var/cache` | Dữ liệu cache từ ứng dụng. |
| `/var/lib`  | Thông tin về trạng thái máy chủ. |
| `/var/lock` | Các tệp bị khóa khi một tiến trình đang chạy. |
| `/var/log`  | Chứa các tệp nhật ký hệ thống (`/var/log/syslog`). |
| `/var/mail` | Hộp thư của người dùng. |
| `/var/opt`  | Dữ liệu thay đổi từ các phần mềm trong `/opt`. |
| `/var/run`  | Dữ liệu chạy thời gian thực (runtime data). |
| `/var/spool` | Hàng đợi dữ liệu cần xử lý (ví dụ: lệnh in ấn). |
| `/var/tmp`  | Tệp tạm thời lâu dài hơn `/tmp`. |

---



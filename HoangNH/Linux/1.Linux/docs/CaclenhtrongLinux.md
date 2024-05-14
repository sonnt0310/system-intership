# Các lệnh trong Linux

## 1.ls

Lệnh ls là lệnh dùng để liệt kê các tập tin và thư mục trong Linux.

- Liệt kê các thư mục, tập tin hiện hành: `ls`

![image1](/HoangNH/Linux/1.Linux/image/ls1.png)

- Hiển thị chi tiết các tập tin và thư mục hiện hành: `ls -l`

![image2](/HoangNH/Linux/1.Linux/image/ls.png)

- Liệt kê thông tin trong thư mục: `ls -l /boot`

![image8](/HoangNH/Linux/1.Linux/image/ls7.png)

- Liệt kê các thư mục, tập tin mẹ: `ls ..`

![image3](/HoangNH/Linux/1.Linux/image/ls2.png)

- Liệt kê trong thư mục:

![image4](/HoangNH/Linux/1.Linux/image/ls3.png)

- Hiển thị tất cả các file và thư mục ẩn ở thư mục hiện hành: `ls -a`

![image5](/HoangNH/Linux/1.Linux/image/ls4.png)

- Liệt kê và sắp xếp theo thời gian: `ls -t`
- Hiển thị kích thước quy đổi ra Mb hoặc Gb: `ls -h`
- Liệt kê các tập tin theo thứ tự ngược: `ls -r`
- Danh sách đệ quy danh mục con: `ls -R`

![image6](/HoangNH/Linux/1.Linux/image/ls5.png)

- Các lệnh kết hợp:

![image7](/HoangNH/Linux/1.Linux/image/ls6.png)

![image9](/HoangNH/Linux/1.Linux/image/ls8.png)


## 2.cd

- Di chuyển từ thư mục hiện tại đến thư mục khác:

![image10](/HoangNH/Linux/1.Linux/image/cd1.png)

- Thay đổi thư mục hiện tại thành thư mục cha: `cd ..`

![image11](/HoangNH/Linux/1.Linux/image/cd2.png)

- Chuyển trở lại thư mục trước đó đã làm việc: `cd -`

![image12](/HoangNH/Linux/1.Linux/image/cd3.png)

- Di chuyển đến thư mục người dùng từ bất kỳ đâu: `cd` hoặc `cd ~`

![image13](/HoangNH/Linux/1.Linux/image/cd4.png)

## 3.pwd(present working directory)

Cú pháp: pwd [OPTION]

OPTION:

|Tùy chọn|Mô tả|
|:---|:---|
|-L(logical)|Sử dụng biến môi trường PWD, ngay cả khi nó chứa các liên kết tượng trưng|
|-P(physical)|Tránh sử dụng tất cả các liên kết tượng trưng|
|-help|Hiển thị trợ giúp|
|-version|In ra thông tin phiên bản|

- In thư mục làm việc hiện tại: `/bin/pwd`

![image14](/HoangNH/Linux/1.Linux/image/pwd1.png)

- Phiên bản in của pwd: `/bin/pwd --version`

![image15](/HoangNH/Linux/1.Linux/image/pwd2.png)

- In tất cả các vị trí chứa tệp thực thi có tên pwd: `type -a pwd`

![image16](/HoangNH/Linux/1.Linux/image/pwd3.png)

## 4.mkdir

- Tạo một thư mục: `mkdir <path_name>`

![image17](/HoangNH/Linux/1.Linux/image/mkdir1.png)

Có thể tạo nhiều thư mục cùng lúc: `mkdir <path_name_1> <path_name_2>`

![image18](/HoangNH/Linux/1.Linux/image/mkdir2.png)

- Tạo một thư mục khi thư mục cha chưa tồn tại: `mkdir -p <path_name>`

![image19](/HoangNH/Linux/1.Linux/image/mkdir3.png)

- Hiển thị quá trình tạo thư mục: `mkdir -v <path_name>`

![image20](/HoangNH/Linux/1.Linux/image/mkdir4.png)

- Tạo thư mục với phân quyền cụ thể

![image21](/HoangNH/Linux/1.Linux/image/mkdir5.png)

- Xem hướng dẫn sử dụng của lệnh MKDIR trong Linux: `man mkdir`

## 5.cp

- Sao chép tập tin vào một thư mục:

![image22](/HoangNH/Linux/1.Linux/image/cp1.png)

- Nhận cảnh báo khi ghi đè:

![image23](/HoangNH/Linux/1.Linux/image/cp2.png)

-  Sao chép thư mục:

![image24](/HoangNH/Linux/1.Linux/image/cp3.png)

## 6.rm

- Xóa 1 file:

![image25](/HoangNH/Linux/1.Linux/image/rm1.png)

- Xóa thư mục: 

Khi xóa thư mục trống:

![image26](/HoangNH/Linux/1.Linux/image/rm2.png)

Khi xóa thư mục không trống: 

![image27](/HoangNH/Linux/1.Linux/image/rm3.png)

- Nhận thông báo khi xóa:

![image28](/HoangNH/Linux/1.Linux/image/rm4.png)

## 7.rmdir

- Dùng để xóa thư mục trống:

Khi thư mục không trống sẽ có thông báo:

![image29](/HoangNH/Linux/1.Linux/image/rmdir1.png)

Khi thư mục trống:

![image30](/HoangNH/Linux/1.Linux/image/rmdir2.png)

- Xóa thư mục con, nếu thư mục cha rỗng cũng bị xóa:

![image31](/HoangNH/Linux/1.Linux/image/rmdir3.png)

## 8.mv

- Chuyển file vào thư mục:


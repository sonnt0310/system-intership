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

- Cú pháp: mv [OPTIONS] SOURCE DESTINATION
- Các options:
   - -i: hỏi xác nhận trước khi ghi đè
   - -v: ghi lại bản ghi của hoạt động
   - -b: tạo một bản backup trước khi ghi đè

![image32](/HoangNH/Linux/1.Linux/image/mv1.png)

## 9.man

Lệnh man, viết tắt của manual, phục vụ một hệ thống tài liệu tích hợp cung cấp thông tin về các lệnh, chức năng, và tệp cấu hình Linux khác.

-  `man ls`:

![image33](/HoangNH/Linux/1.Linux/image/man1.png)

- Khi muốn thoát khỏi lệnh man, ấn q.

## 10.touch

- Cú pháp: touch [options] [filename]
- option -a: tạo tệp mới và gán thời gian
- -m: thay đổi thời gian sửa đổi

![image34](/HoangNH/Linux/1.Linux/image/touch1.png)

- -c: Đổi Access Time mà không phải tạo file mới
- -t: đặt thời gian truy cập và chỉnh sửa đến một ngày giờ nhất định

`touch -t YYMMDDhhmm.ss [filename]`

![image35](/HoangNH/Linux/1.Linux/image/touch2.png)

- -d: đặt ngày giờ bằng chuỗi

![image36](/HoangNH/Linux/1.Linux/image/touch3.png)

## 11.cat

- Cú pháp: cat [options] [filename]
-  `cat > [filename]`: tạo file mới và điền nội dung vào file. Ấn Ctrl+D để thoát file.
- `cat [filename]`: xem nội dung file

![image37](/HoangNH/Linux/1.Linux/image/cat1.png)

- `cat [file1] > [file2]`: chuyển hướng nội dung file. Nếu file đích không có sẵn, lệnh này sẽ tự tạo file đó ra. Hoặc ghi đè lên file có cùng tên.

![image38](/HoangNH/Linux/1.Linux/image/cat2.png)

- `cat -n [filename]`: hiện thị số dòng

![image39](/HoangNH/Linux/1.Linux/image/cat3.png)

- -v: hiển thị tất cả những ký tự không in được
- -T: hiển thị ký tự dấu tab
- -s: cắt bớt dòng trống
- -b: hiển thị những dòng không trống với số dòng trước nó

## 12.head

- In ra 10 dòng đầu của file:

![image40](/HoangNH/Linux/1.Linux/image/head1.png)

- In ra n dòng đầu: -n <số dòng>

![image40](/HoangNH/Linux/1.Linux/image/head2.png)

- Loại trừ n dòng cuối: -n -<số dòng>

![image41](/HoangNH/Linux/1.Linux/image/head3.png)

- In n ký tự đầu tiên của file: -c <số ký tự>

![image42](/HoangNH/Linux/1.Linux/image/head4.png)

- Thực hiện với nhiều file:

![image43](/HoangNH/Linux/1.Linux/image/head5.png)

- Lọc dữ liệu với grep:

![image44](/HoangNH/Linux/1.Linux/image/head6.png)

- Hiển thị các file sử dụng gần đây nhất:

![image45](/HoangNH/Linux/1.Linux/image/head7.png)

## 13.tail

- In ra 10 dòng cuối:

![image46](/HoangNH/Linux/1.Linux/image/tail1.png)

- In ra n dòng cuối: -n <số dòng>

![image47](/HoangNH/Linux/1.Linux/image/tail2.png)

- In từ dòng n: -n +<số dòng>

![image48](/HoangNH/Linux/1.Linux/image/tail3.png)

- In n ký tự cuối của file: -c <số ký tự>

![image49](/HoangNH/Linux/1.Linux/image/tail4.png)

## 14.






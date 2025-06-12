# Triển khai 1 FTP Server với vsftpd trên Ubuntu

## Bước 1: Cài đặt vsftpd
```
sudo apt update
sudo apt install vsftpd -y
```
## Bước 2: Kiểm tra trạng thái dịch vụ
```
sudo systemctl status vsftpd
```
![alt text](<../images/FTPLab 1.png>)

Nếu nó chưa chạy, bạn có thể khởi động bằng:

```
sudo systemctl start vsftpd
sudo systemctl enable vsftpd
```

## Bước 3: Cấu hình vsftpd

Sửa file cấu hình:

```
sudo nano /etc/vsftpd.conf
```

Những dòng nên sửa hoặc bật (bỏ dấu #):
```
listen=YES
listen_IPv6=NO  #Vô hiệu hóa IPv6 nếu không cần
anonymous_enable=NO
local_enable=YES    #Cho phép user hệ thống đăng nhập
write_enable=YES    #Cho phép ghi file (upload, xóa,...)
chroot_local_user=YES   #Giới hạn user chỉ truy cập trong thư mục của họ
allow_writeable_chroot=YES #Cho phép upload khi dùng chroot
```

# Bước 4: Khởi động lại dịch vụ vsftpd

```
sudo systemctl restart vsftpd
```
 
# Bước 5: Mở tường lửa (UFW)
```
sudo ufw allow 20/tcp
sudo ufw allow 21/tcp
sudo ufw allow 10000:10100/tcp
sudo ufw reload
```
20: Dữ liệu FTP (active mode).

21: Điều khiển FTP.

10000-10100: passive mode

# Bước 6: Tạo user ftp
```
sudo adduser ftpuser
```
Hệ thống sẽ yêu cầu nhập mật khẩu và thông tin.

![alt text](<../images/FTPLab 2.png>)

# Bước 7: Kiểm tra 
Trên CentOS, gõ 
```
ftp 192.168.216.100
```
![alt text](<../images/FTPLab 3.png>)

![alt text](<../images/FTPLab 4.png>)
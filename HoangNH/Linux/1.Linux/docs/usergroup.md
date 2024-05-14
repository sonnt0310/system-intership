# Tìm hiểu về user, group trong Linux

## 1.Các quyền của user và group trong Linux

- read: Đối với file, cho phép mở file và đọc. Đối với thư mục, cho phép liệt kê danh sách các file, thư mục trong thư mục đó.
- write: Đối với file, cho phép sửa đổi nội dung file. Đối với thư mục, cho phép thêm,xóa, đổi tên các file trong thư mục đó.
- execute: Đối với file, cho phép thực thi chương trình, tập lệnh. 

![image1](/HoangNH/Linux/1.Linux/image/ls.png)

| |  user | group | other |name|
|:------|:----|:------|:-----|:---|
|d|rwx|---|---|snap|

## 2.user

Linux OS lưu trữ thông tin người dùng trên file /etc/passwd, với các trường được phân tách nhau bởi dấu ":", theo định dạng

```
username:password:UID:GID:comment:home:shell
```

![image2](/HoangNH/Linux/1.Linux/image/user1.png)


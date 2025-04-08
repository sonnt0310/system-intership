# Một số tùy chọn file cấu hình SSH 

Một số cấu hình (trong các file cấu hình một số thiết lập mặc định để ở chế độ commment - có ký tự # phía trước - nếu bạn thiết lập riêng thì xóa #)

File chính cấu hình SSH Server
```
/etc/ssh/sshd_config
```

1) Đổi cổng mặc định nếu muốn đổi cổng kết nối SSH, ví dụ đổi sang cổng 222( mặc định là port 22)
```
Port 222
```

2) Chỉ cho phép một số User kết nối SSH nếu chỉ muốn một số User được chỉ ra được phép kết nối SSH, ví dụ chỉ cho phép ```user1```, ```user2``` thì thêm vào

```
AllowUsers user1 user2
```

Hoặc chỉ cho phép user thuộc nhóm ```sshusers```

```
AllowGroups sshusers
```
3) Cấm một số User ngược lại với AllowUsers, muốn cấm User nào, ví dụ user3, user4 thì thêm vào: 
```
DenyUsers user3 user4
```
4) Quản lý xác thực
- Không cho tài khoản root đăng nhập

```
PermitRootLogin yes/no/prohibit-password
```

```yes```: Cho phép đăng nhập SSH bằng root.

```no```: Không cho phép đăng nhập bằng root (khuyến nghị).

```prohibit-password```: Cấm root đăng nhập bằng mật khẩu, nhưng vẫn cho phép bằng SSH key.

- Tắt xác thực bằng Password nếu muốn tắt chế độ cho phép nhập Password để kết nối SSH thì thêm vào

```
PasswordAuthentication yes/no
```
```yes```: Cho phép đăng nhập bằng mật khẩu.

```no```: Chỉ cho phép đăng nhập bằng SSH key.


- Bật chế độ xác thực SSH Key

PubkeyAuthentication yes

```yes```: Cho phép xác thực bằng SSH key.
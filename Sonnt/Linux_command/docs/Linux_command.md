# Các lệnh trong Linux

## 1. Lệnh ```Man```( manual- xem tài liệu hướng dẫn sử dụng các lệnh, chương trình ...)

Hầu hết các file và lệnh Unix đều có trang man khá tốt để giải thích việc sử dụng chúng. Nó cung cấp thông tin và chi tiết về tên, tóm tắt, mô tả, các option, trạng thái đầu ra, giá trị trả về, lỗi, file, thông tin phiên bản, ví dụ, tác giả,...

### 1.1 Cú pháp cơ bản
```
man [tùy_chọn] [section] <tên_lệnh_hoặc_tệp>
```

- tùy_chọn: Các tùy chọn điều chỉnh cách hiển thị hoặc tìm kiếm trang man.
- section : Chỉ định section của tài liệu man .
- <tên_lệnh_hoặc_tệp>: Tên của lệnh, tiện ích, hoặc tệp cần tra cứu, ví dụ: ls, grep, passwd.

Ví dụ:
```
man ls
```
![alt text](<../images/Command 1.png>)

Sử dụng lệnh để xem thông tin của lệnh ```man``` 

```
man man  
```

![alt text](<../images/Command 2.png>)

Ý nghĩa các con số trong dấu ngoặc () khi dùng lệnh man:

- 1 :Chương trình thực thi hoặc lệnh shell
- 2 :Gọi hệ thống (các chức năng được cung cấp bởi kernel)
- 3 :Gọi thư viện (chức năng trong thư viện chương trình)
- 4 :Tệp đặc biệt (thường được tìm thấy trong /dev)
- 5 :Định dạng và quy ước về tệp,(vd /etc/passwd)
- 6 :Trò chơi
- 7 :Khác (bao gồm các gói và quy ước vĩ mô), ví dụ: man(7)
- 8 :Lệnh quản trị hệ thống (thường chỉ dành cho root: sudo,..)
- 9 :Kernel routines [kernel routines, ít phổ biến]

### 1.2 man $configfile 

xem hướng dẫn file cấu hình: 

ví dụ : ` man sshd_config` 

![alt text](<../../08.DNS/images/DNS 3.png>)
### 1.3 whatis 
để hiển thị mô tả ngắn gọn (một dòng) của các trang hướng dẫn (man pages) liên quan đến một lệnh, tiện ích, hoặc tệp cấu hình cụ thể. 
ví dụ: `whatis sshd`

kết quả: `sshd (8)             - OpenSSH daemon`
### 1.4 man -k
Lệnh `man -k` (tương đương với `apropos`) trong Linux được sử dụng để tìm kiếm các trang hướng dẫn (man pages) có chứa một chuỗi cụ thể trong tên hoặc mô tả của chúng. Khi bạn chạy `man -k <chuỗi>`, nó sẽ hiển thị danh sách các trang hướng dẫn liên quan đến chuỗi đó.

ví dụ:`man -k config`
Kết quả mẫu: 
```
fstab (5)            - static information about the filesystems
sshd_config (5)      - OpenSSH daemon configuration file
syslog.conf (5)      - syslogd configuration file
```

Mỗi dòng hiển thị tên trang hướng dẫn, phần (section), và mô tả ngắn.

### 1.5 whereis

tìm vị trí của các tệp thực thi, mã nguồn và trang hướng dẫn (man pages) liên quan đến một lệnh hoặc chương trình cụ thể.

ví dụ : `whereis sshd`

kết quả : `sshd: /usr/sbin/sshd /usr/share/man/man8/sshd.8.gz`

```
/usr/sbin/sshd: Tệp thực thi của sshd.
/usr/share/man/man8/sshd.8.gz: Trang hướng dẫn cho sshd (phần 8).
```

tùy chọn:

- `-b`: Chỉ tìm tệp thực thi(binary)
    - ví dụ: `whereis -b sshd`
    - kết quả: `/usr/sbin/sshd`
- `-m`: Chỉ tìm trang hướng dẫn (man pages)
    - ví dụ: `whereis -m sshd`
    - kết quả: `/usr/share/man/man8/sshd.8.gz`
- `-s`: Chỉ tìm mã nguồn(source) (thường không có kết quả trừ khi mã nguồn được cài dặt)
- `-M` : Giới hạn khu vực tìm kiếm manpage
- `-B` : Giới hạn khu vực tìm kiếm nhị phân
- `f` : chỉ định danh sách tên kết thúc(dùng khi tìm nhiều tên).Sử dụng kèm với `-B, -M,-S`
- `-V` : Hiển thị thông tin phiên bản và thoát
- `-h` : hiện thị help
![alt text](<../images/Command 4.png>)

## 2 Lệnh `pwd` (Print Working Directory)
Lệnh `pwd` dùng để hiện thị đường dẫn đến thư mục đang làm việc hiện tại: 

ví dụ: 
```
$ pwd 
/home/user/Documents 
```
-> Nghĩa là đang ở thư mục /home/user/Documents.

Option

- `pwd` : In ra đường dẫn hiện tại(mặc định)
- `-L`  : In ra đường dẫn logic( dùng với symlink- mặc định)
- `-P`  : In đường dẫn thật (physical), bỏ qua liên kết tượng trưng 

## 3 Lệnh `cd`(change directory)
Chuyển đổi thư mục làm việc.

Cú pháp: `cd [đường_dẫn]`
# Bảng Tóm Tắt Lệnh `cd` Trong Linux

| Lệnh               | Ý nghĩa                                                                 |
|--------------------|-------------------------------------------------------------------------|
| `cd [thư_mục]`     | Di chuyển vào thư mục chỉ định                                          |
| `cd ..`            | Di chuyển lên thư mục cha (lùi 1 cấp)                                   |
| `cd ../..`         | Di chuyển lên 2 cấp thư mục cha                                         |
| `cd` hoặc `cd ~`   | Trở về thư mục gốc của người dùng (`/home/tên_user`)                   |
| `cd /đường/dẫn`    | Di chuyển theo đường dẫn tuyệt đối                                      |
| `cd .`             | Ở lại thư mục hiện tại (không thay đổi gì)                              |
| `cd -`             | Quay lại thư mục bạn vừa ở trước đó                                     |

## Một số ký hiệu thường dùng:

| Ký hiệu | Ý nghĩa                                  |
|--------|-------------------------------------------|
| `.`    | Thư mục hiện tại                          |
| `..`   | Thư mục cha (lùi lên 1 cấp)               |
| `~`    | Thư mục gốc của người dùng (`/home/user`) |
| `-`    | Thư mục bạn vừa rời khỏi                  |

## 4. Lệnh `ls`(list)
- Cú pháp: `ls [tùy chọn] [đường_dẫn]`

# Bảng Tóm Tắt Lệnh `ls` Trong Linux

| Lệnh                  | Ý nghĩa                                                        |
|-----------------------|----------------------------------------------------------------|
| `ls`                  | Liệt kê file và thư mục trong thư mục hiện tại                |
| `ls [đường_dẫn]`      | Liệt kê file/thư mục trong đường dẫn chỉ định                 |
| `ls -l`               | Hiển thị chi tiết (dạng danh sách: quyền, kích thước, ngày...)|
| `ls -a`               | Hiển thị tất cả, kể cả file ẩn (bắt đầu bằng `.`)             |
| `ls -la` hoặc `ls -al`| Kết hợp: hiển thị chi tiết và cả file ẩn                      |
| `ls -lh`              | Hiển thị chi tiết với kích thước dễ đọc (KB, MB, GB...)       |
| `ls -R`               | Liệt kê đệ quy tất cả thư mục con                             |
| `ls -t`               | Sắp xếp theo thời gian sửa đổi (mới nhất trước)               |
| `ls -S`               | Sắp xếp theo kích thước (lớn đến nhỏ)                         |
| `ls -r`               | Sắp xếp ngược thứ tự thông thường                             |
| `ls -d */`            | Chỉ hiển thị thư mục                                           |

## Ví dụ cụ thể:

| Lệnh                    | Mô tả                                                         |
|-------------------------|---------------------------------------------------------------|
| `ls -lh /var/log`       | Xem chi tiết các file log, hiển thị kích thước dễ đọc        |
| `ls -la ~/Documents`    | Xem tất cả file (kể cả ẩn) trong thư mục Documents           |
| `ls -ltr`               | Liệt kê theo thời gian sửa đổi, cái cũ nhất ở đầu            |
| `ls -lhS`               | Liệt kê chi tiết và sắp xếp theo kích thước giảm dần         |

## Mẹo kết hợp:
- `ls -lah` = kết hợp hiển thị tất cả + chi tiết + kích thước dễ đọc
## 5. Lệnh mkdir (make directory - tạo thư mục)
- Cú pháp: `mkdir [tùy chọn] tên_thư_mục`

# Bảng Tóm Tắt Lệnh `mkdir` Trong Linux

| Lệnh                         | Ý nghĩa                                                        |
|------------------------------|----------------------------------------------------------------|
| `mkdir tên_thư_mục`          | Tạo một thư mục mới trong thư mục hiện tại                    |
| `mkdir đường/dẫn/tên`        | Tạo thư mục tại vị trí cụ thể                                  |
| `mkdir -p a/b/c`             | Tạo cả cây thư mục (nếu `a` và `b` chưa có sẽ tạo luôn)       |
| `mkdir -v tên`               | Hiển thị thông báo mỗi khi tạo thư mục                        |
| `mkdir -pv a/b/c`            | Kết hợp tạo nhiều thư mục và hiển thị thông báo               |

## Ví dụ cụ thể:

| Lệnh                         | Mô tả                                                           |
|------------------------------|------------------------------------------------------------------|
| `mkdir my_folder`            | Tạo thư mục tên `my_folder` trong thư mục hiện tại              |
| `mkdir /home/user/test`      | Tạo thư mục `test` trong đường dẫn tuyệt đối                    |
| `mkdir -p project/src/bin`   | Tạo đồng thời thư mục `project`, `src`, `bin` nếu chưa tồn tại  |
| `mkdir -v data`              | Tạo thư mục `data` và in ra thông báo đã tạo                    |

## Lưu ý:

- Nếu thư mục đã tồn tại, `mkdir` sẽ báo lỗi (trừ khi dùng `-p`)
- Tên thư mục có chứa khoảng trắng cần đặt trong dấu nháy:
  - `mkdir "My Folder"`

## 6. Lệnh rmdir (remove directory - Xóa thư mục)
Cú pháp: `rmdir [tùy chọn] tên_thư_mục`

- `rmdir` chỉ xóa được thư mục rỗng

# Bảng Tóm Tắt Lệnh `rmdir` Trong Linux

| Lệnh                          | Ý nghĩa                                                        |
|-------------------------------|----------------------------------------------------------------|
| `rmdir tên_thư_mục`           | Xóa thư mục trống trong thư mục hiện tại                      |
| `rmdir đường/dẫn/tên`         | Xóa thư mục trống ở vị trí cụ thể                             |
| `rmdir -v tên_thư_mục`        | Xóa và hiển thị thông báo khi xóa                             |
| `rmdir -p a/b/c`              | Xóa thư mục `c`, sau đó `b`, rồi `a` nếu tất cả đều trống     |

## Ví dụ cụ thể:

| Lệnh                          | Mô tả                                                           |
|-------------------------------|------------------------------------------------------------------|
| `rmdir test_folder`           | Xóa thư mục `test_folder` nếu nó trống                          |
| `rmdir -v test_folder`        | Xóa và in thông báo "xóa thành công"                            |
| `rmdir -p -v project/src/bin` | Xóa `bin`, `src`, `project` nếu tất cả đều trống                |

## Xóa nhiều thư mục rỗng:
```
rmdir folder1 folder2 folder3
```
## Xóa đệ quy thư mục trống (nếu tất cả đều trống):
```
mkdir -p a/b/c
rmdir -p a/b/c
```
## 7.Lệnh `file`
- Lệnh file giúp bạn xác định loại nội dung của một file, ví dụ: text, script, ảnh, nhị phân (binary), thư mục, v.v.
- Không dựa vào đuôi mở rộng (ví dụ .txt, .jpg) mà kiểm tra nội dung thực sự của file.

Cú pháp: `file [tùy chọn] tên_file`

## Các Tùy Chọn (Options) của Lệnh `file` Trong Linux

| Tùy chọn         | Mô tả                                                                 |
|------------------|----------------------------------------------------------------------|
| `-b`             | (brief) Chỉ hiển thị loại file, **không hiển thị tên file**          |
| `-i`             | Hiển thị kiểu MIME của file (ví dụ: `text/plain`, `image/png`)       |
| `-f <file>`      | Đọc danh sách file từ file văn bản (mỗi dòng 1 tên file để kiểm tra) |
| `-z`             | Phân tích nội dung file nén (gzip, compress, bzip2...)               |
| `-L`             | Nếu file là liên kết (symbolic link), phân tích file gốc             |
| `-s`             | Hiển thị thông tin ngay cả khi file rỗng                             |
| `--mime-type`    | Chỉ hiển thị loại MIME, không có charset                             |
| `--mime-encoding`| Chỉ hiển thị phần mã hóa (encoding)                                  |
| `-h` hoặc `--help`| Hiển thị trợ giúp                                                     |
| `-v`             | Hiển thị phiên bản lệnh `file`                                        |


## Ghi chú:
- `file -z` chỉ hoạt động nếu `file` được biên dịch với hỗ trợ gzip, bzip2...

## 8. Lệnh `touch`

Dùng để tạo file mới hoặc cập nhật thời gian truy cập/sửa đổi của file hiện có.

Cú pháp: `touch [tùy chọn] tên_file`

| Lệnh                         | Ý nghĩa                                                           |
|------------------------------|--------------------------------------------------------------------|
| `touch file.txt`             | Tạo file `file.txt` nếu chưa tồn tại                              |
| `touch file1 file2`          | Tạo nhiều file cùng lúc                                           |
| `touch -c file.txt`          | Không tạo file nếu không tồn tại (chỉ cập nhật nếu có)            |
| `touch -t [[CC]YY]MMDDhhmm[.ss] file` | Đặt thời gian cụ thể cho file (format chuẩn POSIX)             |
| `touch -d "2025-05-01 12:34"` file.txt | Đặt thời gian chỉnh sửa theo định dạng dễ đọc                  |
| `touch -a file.txt`          | Chỉ cập nhật thời gian truy cập (access time)                     |
| `touch -m file.txt`          | Chỉ cập nhật thời gian chỉnh sửa (modify time)                    |
| `touch -r nguồn đích`        | Sao chép timestamp từ file nguồn sang file đích    

## 9. Lệnh `rm` (remove)
- xóa file hoặc thư mục
- Cú pháp cơ bản: `rm [tùy chọn] tên_file_hoặc_thư_mục`
- Lệnh `rm` xóa vĩnh viễn, không vào thùng rác.


| Lệnh                         | Ý nghĩa                                                              |
|------------------------------|-----------------------------------------------------------------------|
| `rm file.txt`                | Xóa file `file.txt`                                                  |
| `rm file1 file2`             | Xóa nhiều file                                                       |
| `rm *.txt`                   | Xóa tất cả file có đuôi `.txt` trong thư mục hiện tại                |
| `rm -i file.txt`             | Hỏi xác nhận trước khi xóa file                                      |
| `rm -f file.txt`             | Xóa file mà không cần hỏi, kể cả khi file không tồn tại              |
| `rm -r folder/`              | Xóa thư mục và **toàn bộ nội dung bên trong** (đệ quy)               |
| `rm -rf folder/`             | Xóa mạnh thư mục mà **không cần hỏi**, kể cả khi không có quyền      |
| `rm -ri folder/`             | Xóa thư mục và hỏi xác nhận từng file bên trong                      |

## 10.Lệnh `cp` (copy)
- Dùng để sao chép file và thư mục.
- Cú pháp : `cp [tùy chọn] nguồn đích`

## Các tùy chọn thông dụng

| Tùy chọn  | Ý nghĩa                                                                 |
|-----------|-------------------------------------------------------------------------|
| `-i`      | (interactive) Hỏi xác nhận nếu ghi đè file                              |
| `-r`      | (recursive) Sao chép thư mục và toàn bộ nội dung                        |
| `-f`      | (force) Ép ghi đè mà không hỏi nếu không có quyền ghi                  |
| `-u`      | (update) Chỉ sao chép nếu file nguồn mới hơn hoặc đích chưa tồn tại     |
| `-v`      | (verbose) Hiển thị chi tiết tiến trình sao chép                         |
| `-a`      | (archive) Sao chép toàn bộ, giữ nguyên cấu trúc, quyền, thời gian,...  |



| Lệnh                                | Mô tả                                                                 |
|-------------------------------------|----------------------------------------------------------------------|
| `cp file1.txt file2.txt`            | Sao chép `file1.txt` thành `file2.txt`                               |
| `cp file.txt /home/user/`           | Sao chép file vào thư mục khác                                       |
| `cp file1.txt file2.txt /home/user/`| Sao chép nhiều file vào một thư mục                                  |
| `cp -i file.txt /home/user/`        | Hỏi xác nhận nếu file đích đã tồn tại                                |
| `cp -r dir1/ dir2/`                 | Sao chép thư mục `dir1` và toàn bộ nội dung vào `dir2`               |
| `cp -u file.txt /home/user/`        | Chỉ sao chép nếu file nguồn mới hơn hoặc file đích chưa tồn tại      |
| `cp -v file.txt /home/user/`        | Hiển thị chi tiết tiến trình sao chép                                |
| `cp -a dir1/ dir2/`                 | Sao chép thư mục giống hệt (giữ quyền, thời gian, symbolic link,...) |


## 11 Lệnh `mv` (move)

- di chuyển hoặc đổi tên file/thư mục.
- cú pháp: `mv [tùy chọn] nguồn đích`
## Các tùy chọn thông dụng

| Tùy chọn  | Ý nghĩa                                                                 |
|-----------|-------------------------------------------------------------------------|
| `-i`      | (interactive) Hỏi xác nhận trước khi ghi đè file đích                  |
| `-f`      | (force) Ghi đè file đích mà không hỏi                                   |
| `-u`      | (update) Chỉ di chuyển nếu file nguồn mới hơn hoặc file đích chưa có   |
| `-v`      | (verbose) Hiển thị chi tiết từng thao tác    



| Lệnh                              | Mô tả                                                                |
|-----------------------------------|----------------------------------------------------------------------|
| `mv file1.txt file2.txt`          | Đổi tên `file1.txt` thành `file2.txt`                                |
| `mv file.txt /home/user/`         | Di chuyển file vào thư mục khác                                      |
| `mv file1.txt file2.txt dir/`     | Di chuyển nhiều file vào thư mục `dir/`                              |
| `mv -i file.txt /home/user/`      | Hỏi xác nhận nếu file đích đã tồn tại                                |
| `mv -u file.txt /home/user/`      | Chỉ di chuyển nếu file nguồn mới hơn hoặc file đích chưa tồn tại     |
| `mv -v file.txt /home/user/`      | Hiển thị chi tiết khi thực hiện di chuyển hoặc đổi tên   


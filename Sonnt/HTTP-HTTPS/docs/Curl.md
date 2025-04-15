# 1 Tìm hiểu về lệnh Curl
## 1.1. cURL là gì?
curl (Client URL) là một công cụ dòng lệnh mạnh mẽ dùng để truyền dữ liệu qua nhiều giao thức, phổ biến nhất là HTTP/HTTPS. Nó được sử dụng để gửi yêu cầu đến server và nhận phản hồi, thường dùng trong kiểm thử API, tải xuống dữ liệu, hoặc tương tác với các dịch vụ web.
## 1.2 Các tính năng chính của curl
- Hỗ trợ nhiều giao thức: HTTP, HTTPS, FTP, SFTP, SMTP, v.v.
- Gửi các phương thức HTTP: GET, POST, PUT, DELETE, HEAD, v.v.
- Xử lý header, cookie, dữ liệu form, JSON, và xác thực (Basic Auth, OAuth, v.v.).
- Tải lên/tải xuống file.
- Hỗ trợ proxy, SSL/TLS, và các tùy chọn cấu hình chi tiết.
## Sử dụng curl trong Linux

- Trong Linux, curl thường được cài sẵn hoặc có thể cài qua trình quản lý gói:

    - Ubuntu/Debian: `sudo apt install curl`
    - CentOS: `sudo yum install curl`
- Sau khi cài đặt xong ta kiểm tra thử phiên bản đã cài đặt 

`curl --version` 
## Cú pháp cơ bản

```curl [tùy chọn] [URL]```

Gửi yêu cầu GET:

``` curl https://api.example.com/data```

## Các tùy chọn phổ biến:

-X: Chỉ định phương thức HTTP (GET, POST, v.v.).

-H: Thêm header (ví dụ: -H "Authorization: Bearer token").

-d: Gửi dữ liệu trong body (ví dụ: form hoặc JSON).

-o/-O: Lưu output vào file.

-v: Hiển thị chi tiết quá trình gửi/nhận (verbose).

-k: Bỏ qua kiểm tra SSL (không khuyến khích trong môi trường sản xuất).

## Dùng cURL Command để tải file 
- Lệnh này tải file từ một URL và lưu nó trong thư mục làm việc hiện tại với tên file giống với tên file trên máy chủ từ xa.

```curl -O http://yourdomain.com/yourfile.tar.gz  ```

- Lệnh này cũng tải file từ một URL nhưng cho phép bạn chỉ định tên file và đường dẫn lưu trữ cho file được tải xuống.

```curl -o newyourfile.tar.gz http://yourdomain.com/yourfile.tar.gz```

## Lệnh HTTP cURL Command

- cURL Linux được sử dụng để gửi yêu cầu POST hoặc GET đến các URL được chỉ định, hoặc để gửi yêu cầu lấy thông tin header của trang web được chỉ định bởi URL. 

```curl -I www.yourdomain.com```

## Lệnh cURL cho Cookies 

- Lệnh này cho phép bạn gửi yêu cầu đến một trang web và lưu các cookies mà trang web đó gửi lại vào một tệp tin. Điều này rất hữu ích khi bạn muốn duy trì phiên đăng nhập hoặc các thông tin liên quan giữa các yêu cầu cURL khác nhau.

```curl –cookie-jar Mycookies.txt https://www.samplewebsite.com /index.html -O:```

- Với lệnh sau, bạn có thể yêu cầu trang web và sử dụng các cookies đã lưu từ trước trong tệp tin cookies.

```url –cookie Mycookies.txt https://www.samplewebsite.com:```
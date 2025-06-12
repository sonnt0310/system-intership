# 1. Bashsell là gì ?
Bash shell (thường gọi tắt là Bash) là một trình thông dịch dòng lệnh (command-line interpreter) trên hệ điều hành Unix và Linux. Tên "Bash" là viết tắt của "Bourne Again SHell", nhằm thể hiện rằng nó là phiên bản nâng cao của Bourne shell (sh) ban đầu.

- Bash là một shell – tức là một chương trình cho phép người dùng tương tác với hệ điều hành thông qua dòng lệnh.

- Bash còn là một ngôn ngữ lập trình kịch bản (scripting language), dùng để tự động hóa các tác vụ trên hệ thống.

# 2. Tạo 1 file bashshell 'hello-world'
## Ví dụ, tạo một script Hello World

- Tạo một file với tên là hello-world.sh
```
touch hello-world.sh
```
- Phân quyền thực thi được với câu lệnh
```
chmod +x hello-world.sh
```
- Thêm nội dung sau vào script

Chạy lệnh : 
```
nano hello-world.sh
```
Thêm nội dung :

```
#!/bin/bash
echo "Hello World"
```
`#!/bin/bash:` Dòng này gọi là shebang, báo cho hệ điều hành biết file này dùng Bash để chạy.
   
`echo:` In ra dòng chữ trên màn hình.

- Thực hiện chạy sript hello-world.sh theo 1 trong 3 cách sau :
```
./hello-world.sh 
/bin/bash hello-world.sh
bash hello-world.sh 
```

![alt text](<../images/Bash 1.png>)

# 3. Viết script bashshell thực hiện cài đặt tự động HTTP trên Ubuntu 22.04
## tạo file install_http.sh
```
touch install_http.sh
```
## Phân quền thực thi
```
chmod +x install_http.sh
```
## Nội dung file
```
#!/bin/bash

# cap nhat he thong
sudo apt update  -y && sudo apt upgrade -y

# cai dat apache
sudo apt install apache2 -y

# khoi dong dich vu
sudo apt start apache2

# kich hoat khi khoi dong may
sudo apt enable apache2

# kiem tra trang thai
sudo systemctl status apache2

```
# $. Viết script bashshell cài đặt wordpress

```
#!/bin/bash


# Cập nhật hệ thống...
apt update && apt upgrade -y

# Cài đặt Apache, MySQL, PHP và các module cần thiết...
apt install apache2 mysql-server php libapache2-mod-php php-mysql php-cli php-curl php-xml php-mbstring unzip curl -y

# Khởi động Apache và MySQL
systemctl enable apache2
systemctl enable mysql
systemctl start apache2
systemctl start mysql

# Thiết lập cơ sở dữ liệu
DB_NAME="wordpress_db"
DB_USER="wp_user"
DB_PASS="wp_pass123"

# Tạo cơ sở dữ liệu MySQL cho WordPress
mysql -e "CREATE DATABASE $DB_NAME DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;"
mysql -e "CREATE USER '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';"
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"

# Tải và cài đặt WordPress
cd /tmp
curl -O https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

# Triển khai WordPress vào thư mục web
rm -rf /var/www/html/*
cp -R wordpress/* /var/www/html/

# Tạo file wp-config.php và cấu hình cơ sở dữ liệu
cd /var/www/html
cp wp-config-sample.php wp-config.php
sed -i "s/database_name_here/$DB_NAME/" wp-config.php
sed -i "s/username_here/$DB_USER/" wp-config.php
sed -i "s/password_here/$DB_PASS/" wp-config.php

# Cấp quyền thư mục cho Apache
chown -R www-data:www-data /var/www/html
find /var/www/html -type d -exec chmod 755 {} \;
find /var/www/html -type f -exec chmod 644 {} \;

# Khởi động lại Apache
systemctl restart apache2

echo ""
echo " WordPress đã được cài đặt thành công!"

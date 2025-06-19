#!/bin/bash

echo " CÀI ĐẶT WORDPRESS TỰ ĐỘNG"

read -p " Nhập TÊN MIỀN (ví dụ: blog.local): " DOMAIN_NAME
read -p " Nhập TÊN DATABASE (ví dụ: wp_blog): " DB_NAME
read -p " Nhập USER DATABASE (ví dụ: wp_user): " DB_USER
read -sp " Nhập PASSWORD DATABASE: " DB_PASS
echo ""
WEB_ROOT="/var/www/$DOMAIN_NAME"

# Escape password và các biến đặc biệt khi dùng sed
DB_NAME_ESC=$(printf '%s\n' "$DB_NAME" | sed 's/[&/\]/\\&/g')
DB_USER_ESC=$(printf '%s\n' "$DB_USER" | sed 's/[&/\]/\\&/g')
DB_PASS_ESC=$(printf '%s\n' "$DB_PASS" | sed 's/[&/\]/\\&/g')

# Cập nhật hệ thống
apt update && apt upgrade -y

# Cài Apache, MySQL, PHP
apt install apache2 mysql-server php libapache2-mod-php php-mysql php-cli php-curl php-xml php-mbstring unzip curl -y

# Khởi động dịch vụ
systemctl enable apache2
systemctl enable mysql
systemctl start apache2
systemctl start mysql

# Tạo database và user
mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
mysql -e "CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';"
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"

# Kiểm tra kết nối DB
echo " Kiểm tra kết nối MySQL với tài khoản $DB_USER..."
mysql -u "$DB_USER" -p"$DB_PASS" -e "USE $DB_NAME;" 2>/dev/null
if [ $? -ne 0 ]; then
  echo "❌ Không kết nối được tới database! Vui lòng kiểm tra lại user/password."
  exit 1
fi

# Tải và cài đặt WordPress
cd /tmp
curl -O https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

# Di chuyển mã nguồn
mkdir -p "$WEB_ROOT"
cp -R wordpress/* "$WEB_ROOT"

# Cấu hình wp-config.php
cd "$WEB_ROOT"
cp wp-config-sample.php wp-config.php
sed -i "s/database_name_here/$DB_NAME_ESC/" wp-config.php
sed -i "s/username_here/$DB_USER_ESC/" wp-config.php
sed -i "s/password_here/$DB_PASS_ESC/" wp-config.php

# Cấp quyền
chown -R www-data:www-data "$WEB_ROOT"
find "$WEB_ROOT" -type d -exec chmod 755 {} \;
find "$WEB_ROOT" -type f -exec chmod 644 {} \;

# VirtualHost
cat <<EOF > /etc/apache2/sites-available/$DOMAIN_NAME.conf
<VirtualHost *:80>
    ServerName $DOMAIN_NAME
    DocumentRoot $WEB_ROOT

    <Directory $WEB_ROOT>
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog \${APACHE_LOG_DIR}/$DOMAIN_NAME-error.log
    CustomLog \${APACHE_LOG_DIR}/$DOMAIN_NAME-access.log combined
</VirtualHost>
EOF

# Kích hoạt site
a2ensite $DOMAIN_NAME.conf
a2enmod rewrite
systemctl reload apache2

# /etc/hosts
if ! grep -q "$DOMAIN_NAME" /etc/hosts; then
    echo "127.0.0.1    $DOMAIN_NAME" >> /etc/hosts
fi

echo ""
echo " WordPress đã được cài thành công!"
echo " Truy cập: http://$DOMAIN_NAME"


#!/bin/bash

# Hỏi người dùng nhập domain
read -p "Nhập tên miền cần tạo VirtualHost (VD: example.com): " DOMAIN

# Kiểm tra nếu rỗng thì thoát
if [ -z "$DOMAIN" ]; then
  echo "Tên miền không được để trống!"
  exit 1
fi

DOC_ROOT="/var/www/$DOMAIN/public_html"
CONF_FILE="/etc/apache2/sites-available/$DOMAIN.conf"

echo "==> Tạo thư mục web tại: $DOC_ROOT"
sudo mkdir -p "$DOC_ROOT"

echo "<h1>Website $DOMAIN</h1>" | sudo tee "$DOC_ROOT/index.html" > /dev/null

echo "==> Cấp quyền cho thư mục web"
sudo chown -R $(logname):$(id -gn $(logname)) "/var/www/$DOMAIN"
sudo chmod -R 755 "/var/www/$DOMAIN"

echo "==> Tạo file cấu hình Apache: $CONF_FILE"
sudo tee "$CONF_FILE" > /dev/null << EOF
<VirtualHost *:80>
    ServerName $DOMAIN
    ServerAlias www.$DOMAIN
    DocumentRoot $DOC_ROOT

    <Directory $DOC_ROOT>
        Options -Indexes +FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog \${APACHE_LOG_DIR}/$DOMAIN-error.log
    CustomLog \${APACHE_LOG_DIR}/$DOMAIN-access.log combined
</VirtualHost>
EOF

if ! grep -q "$DOMAIN" /etc/hosts; then
  echo "==> Thêm $DOMAIN vào /etc/hosts"
  echo "127.0.0.1 $DOMAIN www.$DOMAIN" | sudo tee -a /etc/hosts > /dev/null
else
  echo "==> $DOMAIN đã tồn tại trong /etc/hosts"
fi
echo "==> Kích hoạt site $DOMAIN"
sudo a2ensite "$DOMAIN.conf"

echo "==> Reload Apache để áp dụng cấu hình"
sudo systemctl reload apache2

echo "✅ Đã c?u hình thành công"


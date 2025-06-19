#!/bin/bash

# Script tự động cài đặt Apache HTTP Server trên Ubuntu

echo "==> Cập nhật danh sách gói..."
sudo apt update

echo "==> Cài đặt Apache2..."
sudo apt install -y apache2

echo "==> Khởi động dịch vụ Apache..."
sudo systemctl start apache2

echo "==> Bật Apache khởi động cùng hệ thống..."
sudo systemctl enable apache2

echo "==> Kiểm tra trạng thái Apache:"
sudo systemctl status apache2 | grep Active

echo "==> Mở cổng 80 trên tường lửa (nếu có UFW)..."
sudo ufw allow 'Apache'
sudo ufw reload

echo "==> Apache đã được cài đặt tại: http://$(hostname -I | awk '{print $1}')"

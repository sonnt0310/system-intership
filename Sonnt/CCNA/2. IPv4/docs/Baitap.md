# Bài tập chia subnet

## 4.6.1. Cho mạng và số bit mượn. Giả sử có hỗ trợ subnet zero. Hãy xác định :
- Số subnet có thể có.
- Số host/subnet.
- Với mỗi subnet, hãy xác định: địa chỉ mạng, địa chỉ host đầu, địa chỉ host cuối, địa chỉ broadcast (nếu số lượng mạng quá nhiều chỉ cần ghi ra một vài mạng đầu và mạng cuối cùng), subnet mask và số prefix.

a) 192.168.2.0/24 mượn 5 bit.

- số subnet có thể: 2^5=32
- số host/subnet: 2^3-2=6
- Các địa chỉ mạng sẽ có octet bị chia cắt (octet thứ 4) là bội số của 8
- Liệt kê các mạng như sau:

192.168.2.0/29  : địa chỉ mạng  
192.168.2.1/29  :địa chỉ host đầu   
192.168.2.6/29 : địa chỉ host cuối    
192.168.2.7/29 : địa chỉ broadcast    

192.168.2.8/29 : địa chỉ mạng  
192.168.2.9/29 : địa chỉ host đầu  
192.168.2.14/29 : địa chỉ host cuối    
192.168.2.15/29 : địa chỉ host broadcast         

. . .

192.168.2.248/29 : địa chỉ mạng     
192.168.2.249/29 : địa chỉ host đầu    
192.168.2.254/29 : địa chỉ host cuối   
192.168.2.255/29 : địa chỉ broadcast     

---
b/ 192.168.12.0/24 mượn 3 bit.

- số subnet có thể: 2^3=8
- số host/subnet: 2^5-2=30
- Các địa chỉ mạng sẽ có octet bị chia cắt (octet thứ 4) là bội số của 32
- Liệt kê các mạng như sau:

192.168.12.0/27 : địa chỉ mạng  
192.168.12.1/27 : địa chỉ host đầu  
192.168.12.30/27 :địa chỉ host cuối    
192.168.12.31/27 : địa chỉ    broadcast    

192.168.12.32/27 : địa chỉ mạng  
192.168.12.33/27 : địa chỉ host đầu  
192.168.12.62/27 :địa chỉ host cuối     
192.168.12.63/27 : địa chỉ broadcast 

192.168.12.64/27 : địa chỉ mạng  
192.168.12.65/27 : địa chỉ host đầu  
192.168.12.94/27 :địa chỉ host cuối       
192.168.12.95/27 : địa chỉ broadcast 

192.168.12.96/27 : địa chỉ mạng  
192.168.12.97/27 : địa chỉ host đầu  
192.168.12.126/27 :địa chỉ host cuối    
192.168.12.127/27 : địa chỉ broadcast 

192.168.12.128/27 : địa chỉ mạng  
192.168.12.129/27 : địa chỉ host đầu  
192.168.12.158/27 :địa chỉ host cuối   
192.168.12.159/27 : địa chỉ broadcast 

192.168.12.160/27 : địa chỉ mạng  
192.168.12.161/27 : địa chỉ host đầu  
192.168.12.190/27 :địa chỉ host cuối   
192.168.12.191/27 : địa chỉ broadcast 

192.168.12.192/27 : địa chỉ mạng  
192.168.12.193/27 : địa chỉ host đầu  
192.168.12.222/27 :địa chỉ host cuối   
192.168.12.223/27 : địa chỉ broadcast 

192.168.12.224/27 : địa chỉ mạng  
192.168.12.225/27 : địa chỉ host đầu  
192.168.12.254/27 :địa chỉ host cuối   
192.168.12.255/27 : địa chỉ broadcast 

---
c/ 172.16.2.0/24 mượn 2 bit

- số subnet có thể: 2^2=4
- số host/subnet: 2^6-2=62
- Các địa chỉ mạng sẽ có octet bị chia cắt (octet thứ 4) là bội số của 64
- Liệt kê các mạng như sau:

172.16.2.0/26 : địa chỉ mạng  
172.16.2.1/26 : địa chỉ host đầu  
172.16.2.62/26 :địa chỉ host cuối   
172.16.2.63/26 : địa chỉ broadcast    

172.16.2.64/26 : địa chỉ mạng  
172.16.2.65/26 : địa chỉ host đầu  
172.16.2.126/26 :địa chỉ host cuối  
172.16.2.127/26 : địa chỉ broadcast  

172.16.2.128/26 : địa chỉ mạng  
172.16.2.129/26 : địa chỉ host đầu  
172.16.2.190/26 :địa chỉ host cuối  
172.16.2.191/26 : địa chỉ broadcast  

172.16.2.192/26 : địa chỉ mạng  
172.16.2.193/26 : địa chỉ host đầu  
172.16.2.254/26 :địa chỉ host cuối  
172.16.2.255/26 : địa chỉ broadcast  

---
d/ 172.16.0.0/16 mượn 3 bit

- số subnet có thể: 2^3=8
- số host/subnet: 2^5-2=320
- Các địa chỉ mạng sẽ có octet bị chia cắt (octet thứ 3 ) là bội số của 32
- Liệt kê các mạng như sau:

172.16.0.0/19 : địa chỉ mạng   
172.16.1.0/19 : địa chỉ host đầu      
172.16.30.0/19 : địa chỉ host cuối  
172.16.31.0/19 : địa chỉ broadcast 

172.16.32.0/19 : địa chỉ mạng   
172.16.33.0/19 : địa chỉ đầu   
172.16.62.0/19 : địa chỉ host cuối  
172.16.63.0/19 : địa chỉ broadcast

...

172.16.192.0/19 : địa chỉ mạng  
172.16.193.0/19 : địa chỉ host đầu  
172.16.222.0/19 : địa chỉ host cuối    
172.16.223.0/19 : địa chỉ broadcast

172.16.224.0/19 : địa chỉ mạng  
172.16.225.0/19 : địa chỉ host đầu    
172.16.254.0/19 : địa chỉ host cuối    
172.16.255.0/19 : địa chỉ broadcast

---
e/ 172.16.0.0/16 mượn 12 bit.

- số subnet có thể: 2^12= 4096
- số host/subnet: 2^4-2=14
- Các địa chỉ mạng sẽ có octet bị chia cắt (octet thứ 4 ) là bội số của 16
- Liệt kê các mạng như sau:

172.16.0.0/28  : địa chỉ Mạng    
172.16.0.1/28  : địa chỉ host đầu    
172.16.0.14/28 : địa chỉ host cuối   
172.16.0.15/28 : địa chỉ broadcast  

172.16.0.16/28 : địa chỉ mạng  
172.16.0.17/28 : địa chỉ host đầu   
172.16.0.30/28 : địa chỉ host cuối  
172.16.0.31/28 : địa chỉ broadcast 

.....

172.16.0.240/28 : địa chỉ mạng         
172.16.0.241/28 : địa chỉ host đầu     
172.16.0.254/28 : địa chỉ host cuối     
172.16.0.255/28 : địa chỉ broadcast     

---
172.16.1.0/28 : địa chỉ mạng    
172.16.1.1/28 : địa chỉ host đầu    
172.16.1.14/28 : địa chỉ host cuối  
172.16.1.15/28 : địa chỉ broadcast  

172.16.1.16/28 : địa chỉ mạng    
172.16.1.17/28 : địa chỉ host đầu    
172.16.1.30/28 : địa chỉ host cuối  
172.16.1.31/28 : địa chỉ broadcast  

.....

172.16.1.240/28 : địa chỉ mạng         
172.16.1.241/28 : địa chỉ host đầu     
172.16.1.254/28 : địa chỉ host cuối     
172.16.1.255/28 : địa chỉ broadcast 

---
172.16.255.0/28 : địa chỉ mạng    
172.16.255.1/28 : địa chỉ host đầu    
172.16.255.14/28 : địa chỉ host cuối  
172.16.255.15/28 : địa chỉ broadcast    

172.16.255.16/28 : địa chỉ mạng    
172.16.255.17/28 : địa chỉ host đầu    
172.16.255.30/28 : địa chỉ host cuối  
172.16.255.31/28 : địa chỉ broadcast 

....

172.16.255.240/28 : địa chỉ mạng         
172.16.255.241/28 : địa chỉ host đầu     
172.16.255.254/28 : địa chỉ host cuối     
172.16.255.255/28 : địa chỉ broadcast 

f/  10.0.0.0/8 mượn 5 bit.

- số subnet có thể: 2^5=32
- số host/subnet: 2^3-2=6
- Các địa chỉ mạng sẽ có octet bị chia cắt (octet thứ 2) là bội số của 8
- Liệt kê các mạng như sau:

10.0.0.0/13 : địa chỉ mạng  
10.1.0.0/13 : địa chỉ host đầu  
10.6.0.0/13 : địa chỉ host cuối  
10.7.0.0/13 : địa chỉ broadcast 

10.8.0.0/13 : địa chỉ mạng  
10.9.0.0/13 : địa chỉ host đầu  
10.14.0.0/13 : địa chỉ host cuối    
10.15.0.0/13 : địa chỉ broadcast 

10.16.0.0/13 : địa chỉ mạng  
10.17.0.0/13 : địa chỉ host đầu  
10.22.0.0/13 : địa chỉ host cuối    
10.23.0.0/13 : địa chỉ broadcast 

10.248.0.0/13 : địa chỉ mạng  
10.249.0.0/13 : địa chỉ host đầu  
10.254.0.0/13 : địa chỉ host cuối   
10.255.0.0/13 : địa chỉ broadcast 

---

g/ 10.0.0.0/8 mượn 10 bit.

- số subnet có thể: 2^10=1024
- số host/subnet: 2^6-2=62
- Các địa chỉ mạng sẽ có octet bị chia cắt (octet thứ 3) là bội số của 64
- Liệt kê các mạng như sau:

10.0.0.0/18: địa chỉ mạng   
10.0.1.0/18: địa chỉ host đầu    
10.0.62.0/18 : địa chỉ host cuối     
10.0.63.0/18: địa chỉ broadcast     

10.0.64.0/18: địa chỉ mạng   
10.0.65.0/18: địa chỉ host đầu     
10.0.126.0/18 : địa chỉ host cuối    
10.0.127.0/18: địa chỉ broadcast 

10.0.128.0/18: địa chỉ mạng   
10.0.129.0/18: địa chỉ host đầu  
10.0.190.0/18 : địa chỉ host cuối    
10.0.191.0/18: địa chỉ broadcast 

10.0.192.0/18: địa chỉ mạng   
10.0.193.0/18: địa chỉ host đầu  
10.0.254.0/18 : địa chỉ host cuối    
10.0.255.0/18: địa chỉ broadcast 

10.1.0.0/18: địa chỉ mạng   
10.1.1.0/18: địa chỉ host đầu    
10.1.62.0/18 : địa chỉ host cuối    
10.1.63.0/18: địa chỉ broadcast 

10.1.64.0/18: địa chỉ mạng   
10.1.65.0/18: địa chỉ host đầu   
10.1.126.0/18 : địa chỉ host cuối    
10.1.127.0/18: địa chỉ broadcast 

...

10.1.192.0/18: địa chỉ mạng   
10.1.193.0/18: địa chỉ host đầu  
10.1.254.0/18 : địa chỉ host cuối    
10.1.255.0/18: địa chỉ broadcast 

...

10.255.0.0/18: địa chỉ mạng   
10.255.1.0/18: địa chỉ host đầu  
10.255.62.0/18 : địa chỉ host cuối    
10.255.63.0/18: địa chỉ broadcast 

...

10.255.192.0/18: địa chỉ mạng   
10.255.193.0/18: địa chỉ host đầu   
10.255.254.0/18 : địa chỉ host cuối    
10.255.255.0/18: địa chỉ broadcast 

h/ 10.0.0.0/8 mượn 18 bit. 

- số subnet có thể: 2^18=262144
- số host/subnet: 2^6-2=62 
- Các địa chỉ mạng sẽ có octet bị chia cắt (octet thứ 4) là bội số của 64
- Liệt kê các mạng như sau:

10.0.0.0/24: địa chỉ mạng   
10.0.0.1/24: địa chỉ host đầu    
10.0.0.62/24 : địa chỉ host cuối     
10.0.0.63/24: địa chỉ broadcast 

10.0.0.64/24: địa chỉ mạng   
10.0.0.65/24: địa chỉ host đầu   
10.0.0.126/24 : địa chỉ host cuối    
10.0.0.127/24: địa chỉ broadcast 

...

10.0.0.192/24: địa chỉ mạng   
10.0.0.193/24: địa chỉ host đầu  
10.0.0.254/24 : địa chỉ host cuối    
10.0.0.255/24: địa chỉ broadcast 


10.1.0.0/24: địa chỉ mạng   
10.1.0.1/24: địa chỉ host đầu    
10.1.0.62/24 : địa chỉ host cuối    
10.1.0.63/24: địa chỉ broadcast 

... 

10.1.0.192/24: địa chỉ mạng   
10.1.0.193/24: địa chỉ host đầu     
10.1.0.254/24 : địa chỉ host cuối    
10.1.0.255/24: địa chỉ broadcast 

...

10.255.0.192/24: địa chỉ mạng   
10.255.0.193/24: địa chỉ host đầu   
10.255.0.254/24 : địa chỉ host cuối    
10.255.0.255/24: địa chỉ broadcast 

10.1.1.0/24: địa chỉ mạng   
10.1.1.1/24: địa chỉ host đầu    
10.1.1.62/24 : địa chỉ host cuối    
10.1.1.63/24: địa chỉ broadcast 

...

10.1.1.192/24: địa chỉ mạng   
10.1.1.193/24: địa chỉ host đầu     
10.1.1.254/24 : địa chỉ host cuối     
10.1.1.255/24: địa chỉ broadcast

...

10.1.255.192/24: địa chỉ mạng   
10.1.255.193/24: địa chỉ host đầu      
10.1.255.254/24 : địa chỉ host cuối    
10.1.255.255/24: địa chỉ broadcast

...

10.255.255.192/24: địa chỉ mạng   
10.255.255.193/24: địa chỉ host đầu    
10.255.255.254/24 : địa chỉ host cuối    
10.255.255.255/24: địa chỉ broadcast

## 4.6.2 Cho mạng 172.16.5.0/24. Hãy chia nhỏ sao cho phù hợp với sơ đồ 

![sơ đồ](<../images/Sơ đồ bt 4.6.2.png>)

Cách thức tiến hành là: sẽ xét các mạng theo thứ tự số host từ cao xuống thấp.

-  Đầu tiên , xét mạng nhiều host nhất:78 host, ta phải xem mượn bao nhiêu bit thì đủ cho mạng này. Ta giải hệ:

      2m – 2 ≥ 79

      m + n = 8 (mượn bit ở octet thứ 4).Với m: số bit host, n: số bit mượn

     Ta được m = 7, n = 1. Vậy ta mượn 1 bit và dành mạng 172.16.5.0/25 để gán cho mạng có 78 host. Mỗi mạng /25 có 2^7 – 2 = 126 host => đáp ứng đủ cho mạng 78 host. Vậy dải địa chỉ 172.16.5.0/24 còn lại các địa chỉ từ 172.16.5.128 -> 172.16.5.255.

-   Tiếp đó ta xét đến mạng có 50 host, tương tự ta xem xem mượn bao nhiêu bit là phù hợp:

      2m – 2 ≥ 51

      m + n = 8 (mượn bit ở octet thứ 4). Với m: số bit host, n: số bit mượn

   Ta được m = 6 và n = 2 là tối ưu. Vậy ta mượn 2 bit, mạng 172.16.5.0 được chia thành 4 mạng 172.16.5.0/26, 172.16.5.64/26, 172.16.5.128/26 và 172.16.5.192./26. Tuy nhiên hai dải địa chỉ của hai mạng 172.16.5.0/26 và 172.16.5.64/26 đã được giành cho mạng 100 host. Do đó ta chỉ có thể lấy từ mạng 172.16.5.128/26 để gán cho mạng 50 host. Ở đây ta lấy mạng 172.16.5.128/26 gán cho mạng 50 host.

-   Tiếp đó ta xét đến mạng có 20 host,  ta xem xem mượn bao nhiêu bit là phù hợp:

   2m – 2 ≥ 21

   m + n = 8 (mượn bit ở octet thứ 4). Với m: số bit host, n: số bit mượn

   Ta được m = 5 và n = 3. Vậy ta mượn 3 bit, mạng 172.16.5.0/24 được chia thành 8 mạng 172.16.5.0/27, 172.16.5.32/27, 172.16.5.64/27 và 172.16.5.96/27, 172.16.5.128/27, 172.16.5.160/27, 172.16.5.192/27, 172.16.5.224/27. Tuy nhiên các dải địa chỉ của các mạng 172.16.5.0/27 ,…, 172.16.5.160/27 đã được giành cho mạng 78 host và mạng 50 host. Do đó ta chỉ có thể lấy từ mạng 172.16.5.192/27 trở đi để gán cho mạng 20 host. Ở đây ta lấy mạng 172.16.5.192/27 gán cho mạng 20 host.

-   Tiếp đó ta xét đến mạng có 10 host,  ta xem xem mượn bao nhiêu bit là phù hợp:

   2m – 2 ≥ 11

   m + n = 8 (mượn bit ở octet thứ 4). Với m: số bit host, n: số bit mượn

   Ta được m = 4 và n = 4 Vậy ta mượn 4 bit, mạng 172.16.5.0/28 được chia thành 16 mạng 172.16.5.0/28, 172.16.5.16/28, 172.16.5.32/28,..., 172.16.5.226/28, 172.16.5.240/28. Tuy nhiên các dải địa chỉ của các mạng 172.16.5.0/28 ,…, 172.16.5.224/28 đã được giành cho mạng 78 host và mạng 50 host, mạng 20 host . Do đó ta chỉ có thể lấy từ mạng 172.16.5.226/28 trở đi để gán cho mạng 10 host. Ở đây ta lấy mạng 172.16.5.226/28 gán cho mạng 10 host.

Tiếp đó ta xét đến mạng có 5 host,  ta xem xem mượn bao nhiêu bit là phù hợp:

   2m – 2 ≥ 6

   m + n = 8 (mượn bit ở octet thứ 4). Với m: số bit host, n: số bit mượn

   Ta được m = 3 và n = 5 Vậy ta mượn 5 bit, mạng 172.16.5.0/29 được chia thành 32 mạng 172.16.5.0/29, 172.16.5.8/29, 172.16.5.16/29,..., 172.16.5.242/29, 172.16.5.248/29. Tuy nhiên các dải địa chỉ của các mạng 172.16.5.0/29 ,…, 172.16.5.240/29 đã được giành cho mạng 78 host và mạng 50 host, mạng 20 host, mạng 10 host  . Do đó ta chỉ có thể lấy từ mạng 172.16.5.242/29 trở đi để gán cho mạng 5 host. Ở đây ta lấy mạng 172.16.5.242/29 gán cho mạng 5 host.

-   Tiếp đó ta xét đến các mạng có 2 host là các liên kết điểm – điểm serial,  ta xem thử mượn bao nhiêu bit là phù hợp:

   2m – 2 ≥ 2

   m + n = 8 (mượn bit ở octet thứ 4). Với m: số bit host, n: số bit mượn

   Ta được m = 2 và n = 6 là tối ưu hơn cả, đảm bảo không bị dư địa chỉ.. Vậy ta mượn  6 bit, mạng 172.16.5.0/24 được chia thành 26 = 64 mạng 172.16.5.0/30, 172.16.5.4/30, 172.16.5.8/30,…, 172.16.5.248/30, 172.16.5.252/30 . Tuy nhiên các dải địa chỉ của các mạng 172.16.5.0/30 ,…, 172.16.5.247/30 đã được giành cho mạng 78 host, mạng 50 host và mạng 20 host, mạng 10 host, mạng 5 host . Do đó ta chỉ có thể lấy từ mạng 172.16.5.248/30 để gán cho các mạng 2 host. Ở đây ta lấy mạng 192.168.1.248/30 và 192.168.1.252/30  gán cho hai liên kết serial.

Bài tập 4.6.3

__a/ 192.168.1.130/29__

/29 => có 29 bit mạng. Octet bị chia cắt là octet thứ 4 => số bit mượn của octet này là 5 => bước nhảy là 8. Lấy octet thứ 4 của địa chỉ host là 130 chia cho 8 được 16 và còn dư. Ta lấy 16 nhân với 8 được 128. Host này thuộc mạng 192.168.1.128  

192.168.1.130 nằm trong dải host (không phải địa chỉ network hay broadcast) → Có thể dùng đặt cho host.

__b/ 172.16.34.57/18__

/18 => có 18 bit mạng. Octet bị chia cắt là octet thứ 3
=> số bit mượn là 2 => bước nhảy là 64. Lấy octet thứ 3 của host là 34 chia 64 được 0 còn dư. Ta lấy 0 nhân 64 bằng 0. Host này thuộc mạng 172.16.0.57 

172.16.34.57/18 nằm trong dải host (không phải địa chỉ network hay broadcast) → Có thể dùng đặt cho host.

__c/ 203.162.4.191/28__

/28 => có 28 bit mạng. Octet bị chia cắt là octet thứ 4
=> số bit mượn là 4 => bước nhảy là 16. Lấy octet thứ 4 của host là 191 chia 16 được 11 còn dư. Ta lấy 11 nhân 16 bằng 176. Host này thuộc mạng 203.162.4.176 

203.162.4.191/28 là địa chỉ broadcast của subnet
→ Không thể dùng đặt cho host.

__d/ 1.1.1.1/30__ 

/30 => có 30 bit mạng. Octet bị chia cắt là octet thứ 4
=> số bit mượn là 6 => bước nhảy là 4. Lấy octet thứ 4 của host là 1 chia 4 được 0 còn dư. Ta lấy 0 nhân 4 bằng 0. Host này thuộc mạng 1.1.1.0 

1.1.1.1/30 là địa chỉ host đầu nằm trong dải host -> có thể dùng làm host 

__e/ 10.10.10.89/29__

/29 => có 29 bit mạng. Octet bị chia cắt là octet thứ 4
=> số bit mượn là 5 => bước nhảy là 8. Lấy octet thứ 4 của host là 89 chia 8 được 11 còn dư. Ta lấy 11 nhân 8 bằng 88. Host này thuộc mạng 10.10.10.88

10.10.10.89/29 là địa chỉ host đầu nằm trong dải host -> có thể dùng làm host 

__f/ 70.9.12.35/30__

/30 => có 30 bit mạng. Octet bị chia cắt là octet thứ 4
=> số bit mượn là 6 => bước nhảy là 4. Lấy octet thứ 4 của host là 35 chia 4 được 8 còn dư. Ta lấy 8 nhân 4 bằng 32. Host này thuộc mạng 70.9.12.32

70.9.12.35/30 là địa chỉ broadcast. -> không làm địa chỉ host 

__g/ 158.16.23.208/29__

/29 => có 29 bit mạng. Octet bị chia cắt là octet thứ 4
=> số bit mượn là 5 => bước nhảy là 8. Lấy octet thứ 4 của host là 208 chia 8 được 26 -> 158.16.23.208 là địa chỉ mạng.-> không dùng làm host

4.6.4. Hãy tóm tắt các địa chỉ mạng sau đây về thành một địa chỉ mạng đại diện:

a)
192.168.0.0/24    
192.168.1.0/24    
192.168.2.0/24    
192.168.3.0/24    

Ta xét chi tiết octet này:

192.168.|000000|00.0

192.168.|000000|01.0

192.168.|000000|10.0

192.168.|000000|11.0

Ta thấy octet thứ ba còn có thêm 6 bit giống nhau. Vậy ta có mạng tóm tắt là 192.168.0.0/22. Chú ý: subnet mask bây giờ là 255.255.252.0 với prefix là 22.

b) 
172.16.16.0/24    
 172.16.20.0.24      
 172.16.24.0/24      
 172.16.28.0/24   

Ta xét chi tiết octet này:

172.16.|0001|0000.0

172.16.|0001|0100.0

172.16.|0001|1000.0

172.16.|0001|1100.0

Ta thấy octet thứ ba còn có thêm 4 bit giống nhau. Octet 3: giữ 4 bit chung “0001” và các bit còn lại đặt về 0 → 00010000 = 16
Vậy có mạng tóm tắt là → 172.16.16.0/20 
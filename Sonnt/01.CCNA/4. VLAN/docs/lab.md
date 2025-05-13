# Cấu hình chia VLAN trên Switch

![alt text](<../images/lab vlan.png>)

| VLAN| Port|
|---|---|
|VLAN 10| Fa 0/1, Fa 0/2|
|VLAN 11| Fa 0/11,Fa 0/12|
|VALN 12| Fa 0/21,Fa 0/22|

## Tạo các VLAN 10 ,VLAN 11,VLAN 12
```
Switch>enable
Switch#configure terminal

Switch(config)#vlan 10
Switch(config-vlan)#name VLAN10
Switch(config-vlan)#exit

Switch(config)#vlan 11
Switch(config-vlan)#name VLAN11
Switch(config-vlan)#exit

Switch(config)#vlan 12
Switch(config-vlan)#name VLAN12
Switch(config-vlan)#exit
```
## Gắn các port vào VLAN đã tạo 

```
Switch>enable
Switch#configure terminal

Switch(config)#interface fastEthernet 0/1
Switch(config-if)#switchport access vlan 10
Switch(config-if)#exit

Switch(config)#interface fastEthernet 0/2
Switch(config-if)#switchport access vlan 10
Switch(config-if)#exit

Switch(config)#interface fastEthernet 0/11
Switch(config-if)#switchport access vlan 11
Switch(config-if)#exit

Switch(config)#interface fastEthernet 0/12
Switch(config-if)#switchport access vlan 11
Switch(config-if)#exit

Switch(config)#interface fastEthernet 0/21
Switch(config-if)#switchport access vlan 12
Switch(config-if)#exit

Switch(config)#interface fastEthernet 0/22
Switch(config-if)#switchport access vlan 12
Switch(config-if)#end
```
## Xem các VLAN đã cấu hình
```
Switch#show vlan
```

## Kiểm tra ping từ các PC
- Trong cùng VLAN -> OK

- Ping giữa các VLAN khác nhau -> Không ping được.

__Cấu hình VTP__
1. Đặt IP cho các PC theo phân hoạch
2. Thiết lập các VLAN trên 2 SW

_Trên SW1_

Đặt tên:

    Switch>enable 
    Switch#configure terminal 
    Switch(config)#hostname SW1
    SW1(config)#

Tạo 2 VLAN10 và VLAN20:

    SW1(config)#vlan 10
    SW1(config-vlan)#name VLAN10
    SW1(config-vlan)#exit

    SW1(config)#vlan 20
    SW1(config-vlan)#name VLAN20
    SW1(config-vlan)#exit

    SW1(config)#

Gán các port vào đúng các VLAN định sẵn:

    SW1(config)#interface fastEthernet 0/10
    SW1(config-if)#switchport access vlan 10
    SW1(config-if)#exit

    SW1(config)#interface fastEthernet 0/11
    SW1(config-if)#switchport access vlan 10
    SW1(config-if)#exit

    SW1(config)#interface fastEthernet 0/20
    SW1(config-if)#switchport access vlan 20
    SW1(config-if)#exit

    SW1(config)#exit

_Trên SW2_

Đặt tên:

    Switch>enable 
    Switch#configure terminal 
    Switch(config)#hostname SW2
    SW2(config)#

Tạo 2 VLAN10 và VLAN20:

    SW2(config)#vlan 10
    SW2(config-vlan)#name VLAN10
    SW2(config-vlan)#exit

    SW2(config)#vlan 20
    SW2(config-vlan)#name VLAN20
    SW2(config-vlan)#exit

    SW2(config)#

Gán các port vào đúng các VLAN định sẵn:

    SW2(config)#interface fastEthernet 0/10
    SW2(config-if)#switchport access vlan 10
    SW2(config-if)#exit

    SW2(config)#interface fastEthernet 0/20
    SW2(config-if)#switchport access vlan 20
    SW2(config-if)#exit

    SW2(config)#exit

__Đặt IP cho các interface VLAN trên 2 SW__  
Đặt các địa chỉ IP của SW1 cho VLAN10 và VLAN20:

    SW1#configure terminal 
    SW1(config)#interface vlan 10
    SW1(config-if)#
    SW1(config-if)#ip address 192.168.10.1 255.255.255.0
    SW1(config-if)#no shutdown
    SW1(config-if)#exit
    SW1(config)#

    SW1(config)#interface vlan 20
    SW1(config-if)#ip address 192.168.20.1 255.255.255.0
    SW1(config-if)#no shutdown 
    SW1(config-if)#exit 

    SW1(config)#exit
    SW1#

Đặt các địa chỉ IP của SW2 cho VLAN10 và VLAN20:

    SW2#configure terminal 
    SW2(config)#interface vlan 10
    SW2(config-if)#
    SW2(config-if)#ip address 192.168.10.2 255.255.255.0
    SW2(config-if)#no shutdown
    SW2(config-if)#exit
    SW2(config)#

    SW2(config)#interface vlan 20
    SW2(config-if)#ip address 192.168.20.2 255.255.255.0
    SW2(config-if)#no shutdown 
    SW2(config-if)#exit 

    SW2(config)#exit
    SW2#

__Thiết lập VTP Server và VTP Client__

Mặc định thì Catalyst switch sẽ được cấu hình làm VTP Server. Thiết lập cho SW1 là VTP Server và SW2 là VTP Client

    SW1>enable 
    SW1#configure terminal 
    SW1(config)#vtp mode server
    SW1(config)#vtp domain NH
    SW1(config)#vtp password nhanhoa2020
    SW1(config)#exit

    SW2>enable 
    SW2#configure terminal 
    SW2(config)#vtp mode client
    SW2(config)#vtp domain NH
    SW2(config)#vtp password nhanhoa2020
    SW2(config)#exit

Tạo đường trunk từ SW1 đến SW2:
    SW1#configure terminal 
    SW1(config)#interface fastEthernet 0/1
    SW1(config-if)#switchport mode trunk 
    SW1(config-if)#end
    SW1#

    SW2#configure terminal 
    SW2(config)#interface fastEthernet 0/1
    SW2(config-if)#switchport mode trunk 
    SW2(config-if)#end
    SW2#

Câu lệnh kiểm tra

    SW# show vtp status

    SW# show vtp pasword

    SW# show vlan

    SW# show interfaces trunk 

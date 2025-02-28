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
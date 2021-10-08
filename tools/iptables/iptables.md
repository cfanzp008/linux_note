## 关闭centos7 默认防火墙
```
systemctl stop firewalld
systemctl mask firewalld
systemctl disable firewalld #禁止开机启动
```


## install iptables-services：
```
yum install iptables-services
```

## 设置开机启动：
```
systemctl enable iptables

systemctl stop iptables
systemctl start iptables
systemctl restart iptables
systemctl reload iptables
```

## 保存设置：
```
service iptables save
```

## iptables命令
###  0x01介绍
- iptables命令是Linux上常用的防火墙软件，是netfilter项目的一部分
- iptables文件设置路径：
```
vim /etc/sysconfig/iptables-config
```

###  0x02注意事项
- 如果说你以前使用的是contos7 那么默认使用的防火墙那么就是Firewall 这样的话，就要先把Firewall 给关闭在使用iptables

### 0x03检查是否安装了iptables
```
service iptables status
```

### 0x04安装iptables
```
yum install -y iptables
```

### 0x05升级iptables
```
yum update iptables
```

### 0x06安装iptables-services
```
yum install iptables-services

```
### 0x07开启防火墙
```
systemctl start iptables.service #启动防火墙
systemctl enable iptables.service #设置开机自启动
```

### 0x08关闭防火墙
```
systemctl stop iptables.service #关闭防火墙
systemctl disable iptables.service #禁止开机启动
```

### 0x09查看iptables状态
```
systemctl status iptables.service
```

### 0x10查看iptables现有规则
```
iptables -L -n
```

### 0x11重点：清除默认的防火墙规则
- 11.1 安装完成基本配置-允许所有请求防止悲剧
 首先在清除前要将policy INPUT改成ACCEPT,表示接受一切请求。
 这个一定要先做，不然清空后可能会直接悲剧
 设置 INPUT 方向所有的请求都允许
```
iptables -P INPUT ACCEPT
```

- 11.2 安装完成基本配置-清空所有默认规则
```
iptables -F
```

- 11.3 安装完成基本配置-清空所有自定义规则
```
iptables -X
```

- 11.4 安装完成基本配置-所有计数器归0
```
iptables -Z
```

### 0x12重点：配置规则
- 12.1允许来自于lo接口的数据包
如果没有此规则，你将不能通过127.0.0.1访问本地服务，例如ping 127.0.0.1
```
iptables -A INPUT -i lo -j ACCEPT
```

- 12.2开启某个端口
```
iptables -A INPUT -p tcp --dport 端口 -j ACCEPT
```

- 12.2.1例子：开启80,22端口
```
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
```

- 12.3允许icmp包通过,也就是允许ping
```
iptables -A INPUT -p icmp -m icmp --icmp-type 8 -j ACCEPT
```

- 12.4允许所有对外请求的返回包
本机对外请求相当于OUTPUT,对于返回数据包必须要接收啊，这相当于INPUT了
```
iptables -A INPUT -m state --state ESTABLISHED -j ACCEPT
```

- 12.5如果要添加内网ip信任（接受其所有TCP请求）
```
iptables -A INPUT -p tcp -s 192.168.1.50(改为允许的内网IP即可) -j ACCEPT
```

- 12.6过滤除iptables规则之外的所有请求
```
iptables -P INPUT DROP
```

### 0x13 重点：保存规则
- 注意：设置完成以后先执行命令iptables -L -n看一下配置是否正确。
 没问题后，先不要急着保存，因为没保存只是当前有效，重启后就不生效，这样万一有什么问题，可以后台强制重启服务器恢复设置。
 另外开一个ssh连接，确保可以登陆。
 确保没问题之后在进行保存
- 保存命令：
```
service iptables save
```

### 0x14 重启防火墙
```
systemctl restart iptables.service
```

### 0x15 杂项
- 15.1要封停一个IP，使用下面这条命令
```
iptables -I INPUT -s ... -j DROP
```

- 15.2 要解封一个IP，使用下面这条命令
```
iptables -D INPUT -s ... -j DROP
```

### 0x16 删除某个已有规则
- 要删除规则那么我们就需要先将所有iptables规则以序号标记显示，执行：
```
iptables -L -n --line-numbers
```

- 比如要删除INPUT里序号为8的规则，执行：
```
iptables -D INPUT 8
```

 #!/bin/sh

 #查看iptables现有规则
 iptables -L -n

 #先允许所有,不然有可能会杯具
 iptables -P INPUT ACCEPT

 #清空所有默认规则
 iptables -F

 #清空所有自定义规则
 iptables -X

 #所有计数器归0
 iptables -Z

 #允许来自于lo接口的数据包(本地访问)
 iptables -A INPUT -i lo -j ACCEPT

 #开放22端口
 iptables -A INPUT -p tcp --dport 22 -j ACCEPT

 #开放21端口(FTP)
 iptables -A INPUT -p tcp --dport 21 -j ACCEPT

 #开放80端口(HTTP)
 iptables -A INPUT -p tcp --dport 80 -j ACCEPT

 #开放443端口(HTTPS)
 iptables -A INPUT -p tcp --dport 443 -j ACCEPT

 #允许ping
 iptables -A INPUT -p icmp --icmp-type 8 -j ACCEPT


 #允许业务端口
 # mysql 临时开启
 iptables -A INPUT -p tcp --dport 3306 -j ACCEPT
 #login
 iptables -A INPUT -p tcp --dport 7100 -j ACCEPT
 # gate
 iptables -A INPUT -p tcp --dport 7315 -j ACCEPT
 # gate
 iptables -A INPUT -p tcp --dport 7325 -j ACCEPT

 #允许接受本机请求之后的返回数据 RELATED,是为FTP设置的
 iptables -A INPUT -m state --state  RELATED,ESTABLISHED -j ACCEPT

 #其他入站一律丢弃
 iptables -P INPUT DROP

 #所有出站一律绿灯
 iptables -P OUTPUT ACCEPT

 #所有转发一律丢弃
 iptables -P FORWARD DROP

 #保存
 service iptables save

 #重启动
service iptables  restart

# hydra
## demo
- demo

```
hydra 192.168.2.158 -s 9999 rdp -l administrator -P safe_pwd.txt -V
cat safe_pwd.txt
123456
ll5201314
```

### rdp demo

```
hydra 192.168.2.127 -s 3389 rdp -l Administrator -P pass_dev2_004.txt -t4 -V -W 1
```

### 从文件恢复上次的操作

```
hydra -R hydra.restore
```

### 中文文档

```
hydra（九头蛇）是一款开源的协议爆破工具，功能十分强大！！！
具体使用如下：
-R　　　　　  继续从上一次进度接着破解
-I　　　　 　 忽略已破解的文件进行破解
-S 　　　　　 采用SSL链接
-s 端口　　　 指定非默认服务端口
-l  用户名　  指定用户名破解
-L 用户名文件 指定用户名字典
-p 密码　　　 指定密码破解
-P 密码文件   指定密码字典
-y　　　　    爆破中不使用符号
-e nsr 　　   "n" 尝试空密码, "s" 尝试指定密码，"r" 反向登录
-C 文件 　　  使用冒号分割格式，例如"登录名:密码"来代替-L/-P参数
-M 文件 　　  每行一条攻击的服务器列表, 用 “:(英文冒号)” 指定端口
-o 文件　　   指定结果输出文件
-b 格式　　   为 -o 输出文件指定输出格式，默认为：text, json, jsonv1
-f / -F　　　 找到登录名和密码时停止破解（若是一个文件，则进行下一个IP的破解）
-t 线程　　   设置运行的线程数，默认是16
-w / -W 时间  设置最大超时的时间，单位秒，默认是30s
-c 时间　　   每次破解等待所有线程的时间
-4 / -6 　　  使用IPv4(默认)或IPv6
-v / -V 　　  显示详细过程
-q　　　　　  不打印连接失败的信息
-U　　　　　  服务模块详细使用方法
-h　　　　　  更多命令行参数介绍
server　　　  目标服务器:DNS、IP或192.168.0.0/24(此选项或-M选项)
service　　　 服务要破解的服务(参见下面支持的协议)
OPT　　　　　 选择一些服务模块支持额外的输入(-U表示模块帮助)

支持的协议：
adam6500、asterisk、cisco、cisco-enable、cvs、firebird、ftp、ftps、http[s]-{head|get|post}、http[s]-{get|post}-form、http-proxy、http-proxy-urlenum、icq、imap[s]、irc、ldap2[s]、ldap3[-{cram|digest}md5][s]、mssql、mysql、nntp、oracle-listener、oracle-sid、pcanywhere、pcnfs、pop3[s]、postgres、radmin2、rdp、redis、rexec、rlogin、rpcap、rsh、rtsp、s7-300、sip、smb、smtp[s]、smtp-enum、snmp、socks5、ssh、sshkey、svn、teamspeak、telnet[s]、vmauthd、vnc、xmpp
```

## crunch
- centos 安装

```
wget --no-check-certificate  https://udomain.dl.sourceforge.net/project/crunch-wordlist/crunch-wordlist/crunch-3.6.tgz
tar -xzvf crunch-3.6.tgz
cd crunch-3.6/
make
make install
```

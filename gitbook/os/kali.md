# kali
## ssh 配置
- [开启ssh服务,允许root登录](https://blog.csdn.net/u010953692/article/details/80312751)
- 查看ssh服务状态

```
/etc/init.d/ssh status
```

- 修改配置文件

```
vim /etc/ssh/sshd_config

PermitRootLogin yes
PasswordAuthntication yes
```

- 启动ssh服务

```
/etc/init.d/ssh start
```

- 修改源

```
sudo vi /etc/apt/sources.list
#中科大
deb http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib  
deb-src http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib 
#软件源清单更新
sudo apt-get dist-upgrade
#软件版本更新
sudo apt-get update
sudo apt-get upgrade
```

- 密钥失败

```
The following signatures were invalid: EXPKEYSIG ED444FF07D8D0BF6 Kali Linux

wget -q -O - https://archive.kali.org/archive-key.asc  |apt-key add
#不成功的话改http请求试试
wget -q -O - http://archive.kali.org/archive-key.asc  |apt-key add
```

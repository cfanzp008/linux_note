## proxychains 安装教程
```
git clone https://github.com/rofl0r/proxychains-ng.git
cd proxychains-ng
./configure --prefix=/usr --sysconfdir=/etc
make && make install
make install-config
cd .. && rm -rf proxychains-ng
vim /etc/proxychains.conf  //修改配置文件
socks5  127.0.0.1 1080  //ip和port改成自己的ip和端口
proxychains4 wget http://xxx.com/xxx.zip   //在需要代理的命令前加上proxychains4
```

## 帮助
- https://blog.csdn.net/ITWANGBOIT/article/details/105738967

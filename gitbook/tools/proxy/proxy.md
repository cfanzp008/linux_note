# 代理
## 免费上网
https://yugogo.xyz/
https://yugogo.xyz/?p=1111
https://www.youtube.com/watch?v=RqKi697f8jU&ab_channel=yuLittle

## v2ray
### 配置
https://www.v2fly.org/config/inbounds.html#inboundobject
https://my.oschina.net/u/4437065/blog/3153449


### 下载
https://github.com/v2fly/v2ray-core/releases
https://bainesing.wordpress.com/2019/10/25/linux%E9%85%8D%E7%BD%AEv2ray%E5%AE%A2%E6%88%B7%E7%AB%AF/

### 安装
https://github.com/v2fly/fhs-install-v2ray
```
installed: /usr/local/bin/v2ray
installed: /usr/local/bin/v2ctl
installed: /usr/local/share/v2ray/geoip.dat
installed: /usr/local/share/v2ray/geosite.dat
installed: /usr/local/etc/v2ray/config.json
installed: /var/log/v2ray/
installed: /var/log/v2ray/access.log
installed: /var/log/v2ray/error.log
installed: /etc/systemd/system/v2ray.service
installed: /etc/systemd/system/v2ray@.service
```

## 常用软件
- yum
```
vim /etc/yum.conf
在此文件中加上：
proxy=http://easwy:123456@192.168.1.1:8080
现在使用yum就可以更新你的软件了。
```

- svn
```
vim ~/.subversionservers
在此文件的[global]段加上:
http-proxy-host = 192.168.1.1
http-proxy-port = 8080
http-proxy-username = easwy
http-proxy-password = 123456
```

- bash 控制台
```
~/.bashrc里加上：
export http_proxy=http://username:password@proxyserver:port/
export ftp_proxy=http://username:password@proxyserver:port/
然后执行:
source ~/.bashrc
```

- curl
```
curl -i  --proxy 192.168.2.189:30000 www.baidu.com
```

- wget
```
wget -e "http_proxy=http://[user]:[pass]@host:port/" http://baidu.com
```

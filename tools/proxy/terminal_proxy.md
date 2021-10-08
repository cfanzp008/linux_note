## terminal proxy 配置
### linux
vim ~/.bashrc
```
#export http_proxy=socks5://192.168.2.127:1080
#export https_proxy=socks5://192.168.2.127:1080
#export no_proxy="*.baidu.com,192.168.*.*,*.local,localhost,127.0.0.1"

export http_proxy=
export https_proxy=
export no_proxy=""
#export no_proxy="*.baidu.com,192.168.*.*,*.local,localhost,127.0.0.1"
```

### windows 添加环境变量
http_proxy
https_proxy

## 帮助
- https://zcdll.github.io/2018/01/27/proxy-on-windows-terminal/
- http://aiezu.com/article/linux_bash_set_proxy.html


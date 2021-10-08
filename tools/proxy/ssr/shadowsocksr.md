## install

```
git clone https://github.com/ssrarchive/shadowsocksr.git
```

## config
```
/etc/shadowsocks/ssr.json
```

## start
```
python local.py -c /etc/shadowsocks/ssr.json -d start
```

## stop

```
python local.py -c /etc/shadowsocks/ssr.json -d stop
```

## chromium
```
chromium --proxy-server="socks5://127.0.0.1:1080"
```


## proxychains
1. install:sudo apt install proxychains
2. config:
```
sudo vim /etc/proxychains.conf
```
3. use
```
proxychains wget www.baidu.com

4. bash走代理
proxychains bash
```

## help


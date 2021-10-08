## install
```
yaourt shadownsocks
yaourt shadownsocks-libev
```

## config
```
/etc/shadowsocks/config.json
```

## start
```
systemctl start shadowsocks@config
systemctl enable shadowsocks@config
```

## log
```
journalctl -u shadowsocks@config
```

## chromium
```
chromium --proxy-server="socks5://127.0.0.1:1080"
```

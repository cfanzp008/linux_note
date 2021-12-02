# nmap
## install
```
sudo pacman -S nmap
```

## 使用
1. 查看机器打开了哪些端口
```
nmap ip
```

2. 查看机器OS
```
nmap -O ip
nmap -sV ip
```

3. 查看机器端口服务
```
nmap -A -T4 ip

```

4. 扫描多个ip:192.168.2.170-192.168.2.179
```
nmap -sV  192.168.2.170-179
```


## demo
1. nmap -sP 192.168.2.1/24 -oN nmap_all.sP
2. nmap -A 192.168.2.195 -oN nmap_195.A
3. nmap --script=vuln 192.168.221.130  // 指定脚本扫描

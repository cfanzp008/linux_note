## 查看某个ip开启了哪些端口
nmap ip
1. -Pn: 如果ip地址不允许ping也可以扫描
2. -sV
3. -O


## demo
1. nmap -sP 192.168.2.1/24 -oN nmap_all.sP
2. nmap -A 192.168.2.195 -oN nmap_195.A
3. nmap --script=vuln 192.168.221.130  // 指定脚本扫描

## tools for safe
### 基本概念
1. POC,POC脚本:Proof of Concept 观点验证程序
2. 0day
3. exploit:漏洞利用
4. payload:有效荷载

### 常用命令
1. du -h a.txt
2. stat a.txt
3. wc a.txt

### 工具集合
1. https://www.uedbox.com/tools/
2. fprobe https://github.com/theblackturtle/fprobe
3. windows:https://msdn.itellyou.cn/

### 扫描
1. nmap
2. cewl (kali):收集网站关键字
   - cewl www.baidu.com > baidu.dic
   - wc -l baidu.dic
3. dirb: web 目录扫描
4. gobuster
5. msfconsole
  - use 对应模块
    show options 查看信息
    set RHOST/RHOSTS
    run 运行
  - 更新
    kali1在目录内运行命令./msfupdate
    kali2 运行命令apt update,apt install metasploit-framework
  - 启动报错 You must use Bundler 2 or greater with this lockfile
    gem install bundler -v 2.0.1
    gen update --system
6. wpscan
7. arp-scan:arp-scan -l 快速发现局域网内的主机
8. masscan eg:masscan -p1-65535 192.168.2.22 --rate=1000

### dns扫描
1. dnsmap
   - dnsmap test.com -w dnsmap.txt -r /tmp/dnsmap/test/1.txt
   - dnsmap test.com -w wordlist_TLAs.txt -r /tmp/dnsmap/test/1.txt
   - kali的dnsmap文件目录在/usr/share/wordlists下
2. dnsenum
   - dnsenum -f dns.txt -dns 8.8.8.8 test.com -o /tmp/dnsenum/test.txt

### 网站扫描
   - nikto:nikto  -h 192.168.2.22 -C -p 80 -T 3478b -t 3 -D \ V -o api_webtest.html -F htm

### 综合漏洞发现工具：nessus

### 字典生成
1. crunch 8 8 abcdefg -o /root/dic/passlist_8.dic
2. rtgen 生成彩虹表
   - https://www.cnblogs.com/student-programmer/p/6729015.html
3. cupp apt-get install cupp

### 路由器
1.routersploit https://www.freebuf.com/sectool/101441.html

### 爆破
1. hydra
  - hydra -l user -P passlist.txt ftp://192.168.0.1
  - hydra -L userlist.txt -p defaultpw imap://192.168.0.1/PLAIN
  - hydra -C defaults.txt -6 pop3s://[2001:db8::1]:143/TLS:DIGEST-MD5
  - hydra -l admin -p password ftp://[192.168.0.0/24]/
  - hydra -L logins.txt -P pws.txt -M targets.txt ssh
  - hydra -l root -P passlist.txt 192.168.221.128 ssh -s 22 -o hydra.ssh -vV
  - hydra -L user.dic -P passlist.dic 192.168.0.100 ssh -s 22 -o hydra.ssh -vV

### 提权
1. git提权 git -p --help
2. find提权 find / -perm -4000 2>/dev/null


### 练习靶机
1. http://www.five86.com/
- DC-1: https://www.jianshu.com/p/b659f4619c88


### bug发现
1. seebug.org


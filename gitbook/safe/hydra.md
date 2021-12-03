# hydra
## demo
- demo

```
hydra 192.168.2.158 -s 9999 rdp -l administrator -P safe_pwd.txt -V
cat safe_pwd.txt
123456
ll5201314
```

### rdp demo

```
hydra 192.168.2.127 -s 3389 rdp -l Administrator -P pass_dev2_004.txt -t4 -V -W 1
```


## crunch
- centos 安装

```
wget --no-check-certificate  https://udomain.dl.sourceforge.net/project/crunch-wordlist/crunch-wordlist/crunch-3.6.tgz
tar -xzvf crunch-3.6.tgz
cd crunch-3.6/
make
make install
```

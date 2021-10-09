# smb
## 重启
```
service smb restart
```

## 设置SELinux 成为permissive模式
```
setenforce 0
```
## 登录权限用的是samba用胡的权限
## samba用户必须为linux用户

## 重启后无法访问smb
- 可能是防火墙原因，关闭防火墙
```
iptables -F
```
- 设置SELinux 成为permissive模式
```
setenforce 0
```

## help:
- [SMB 重启 后访问失败](http://blog.chinaunix.net/uid-26734201-id-3498034.html)
- [Linux samba配置共享目录](https://blog.csdn.net/spy_h/article/details/80921711)
- [WINDOWS访问SAMBA提示没有权限](https://www.cnblogs.com/fklin/articles/2772364.html)
- [centos安装配置samba](https://www.cnblogs.com/xuelisheng/p/10449291.html)
- [CentOS 7设置Samba共享目录](https://blog.csdn.net/weixin_30558305/article/details/97772795?utm_medium=distribute.pc_relevant_t0.none-task-blog-BlogCommendFromMachineLearnPai2-1.nonecase&depth_1-utm_source=distribute.pc_relevant_t0.none-task-blog-BlogCommendFromMachineLearnPai2-1.nonecase)

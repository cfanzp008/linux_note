# kali
## ssh 配置
- [开启ssh服务,允许root登录](https://blog.csdn.net/u010953692/article/details/80312751)
- 查看ssh服务状态

```
/etc/init.d/ssh status
```

- 修改配置文件

```
vim /etc/ssh/sshd_config

PermitRootLogin yes
PasswordAuthntication yes
```

- 启动ssh服务

```
/etc/init.d/ssh start
```

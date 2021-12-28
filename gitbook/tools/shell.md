# 常用命令
## tar
- 打包redis目录
```
tar -czvf redis.tar.gz redis
```

## 7z
- 解压 icon.7z
```
7z x icon.7z
```

- manjaro 拓展
  1. url:https://jingyan.baidu.com/article/6766299702211f14d51b8491.html

## ssh
- 公私密钥登录
```
ssh root@123.207.126.144 -p22 -i id_rsa
```

## ssh无法连接
- ssh登陆报错“WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!”问题原因及解决方法

```
删除对应ip的在known_hosts相关信息
vim /.ssh/known_hosts
```

- ssh 升级 openssh 8.8sp1

```
https://blog.csdn.net/qq_29974229/article/details/120888947
```

- 升级openssh反馈gitlab相关配置失效 git clone 需要输入密码

```
https://blog.csdn.net/qq_43297703/article/details/106123791?spm=1001.2101.3001.6661.1&utm_medium=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7ECTRLIST%7Edefault-1.highlightwordscore&depth_1-utm_source=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7ECTRLIST%7Edefault-1.highlightwordscore

#vim /etc/ssh/sshd_config
KexAlgorithms diffie-hellman-group1-sha1,diffie-hellman-group14-sha1,diffie-hellman-group-exchange-sha1,diffie-hellman-group-exchange-sha256,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group1-sha1,curve25519-sha256@libssh.org

重启sshd:
#service sshd restart
确认ssh公钥已经上传到gitlab密钥之后，查看一下git用户是否被锁定
执行命令：sudo passwd -u git
强制执行命令：sudo passwd -u -f git
```

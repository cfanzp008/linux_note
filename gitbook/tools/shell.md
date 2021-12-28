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

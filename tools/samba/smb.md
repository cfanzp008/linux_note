## 重启
```
service smb restart
```

## 设置SELinux 成为permissive模式
```
setenforce 0
```
## 登录权限用的是samba用胡的权限
## samba用户必须未linux用户

## help:
- https://blog.csdn.net/spy_h/article/details/80921711
- url:https://www.cnblogs.com/fklin/articles/2772364.html
- url:https://www.cnblogs.com/xuelisheng/p/10449291.html
- url:https://blog.csdn.net/weixin_30558305/article/details/97772795?utm_medium=distribute.pc_relevant_t0.none-task-blog-BlogCommendFromMachineLearnPai2-1.nonecase&depth_1-utm_source=distribute.pc_relevant_t0.none-task-blog-BlogCommendFromMachineLearnPai2-1.nonecase

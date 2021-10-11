# gitlab
## gitlab 安装
### 配置要求
```
CPU:2核+
内存:2G+
```

### gitlab服务器组成
```
1. nginx
2. gitlab-shell
3. gitlab-workhorse
4. logrotate:日志文件管理工具
5. postgresql:数据库
6. redis:缓存数据库
7. sidekiq:用于在后台执行队列任务
8. unicorn:An HTTP server for Rack applications
```


### yum 安装
- 新建 /etc/yum.repos.d/gitlab_gitlab-ce.repo
```
[gitlab-ce]
name=Gitlab CE Repository
baseurl=https://mirrors.tuna.tsinghua.edu.cn/gitlab-ce/yum/el$releasever/
gpgcheck=0
enabled=1
```

- 安装依赖
```
sudo yum install curl openssh-server openssh-clients postfix cronie
sudo service postfix start
sudo chkconfig postfix on
#这句是用来做防火墙的，避免用户通过ssh方式和http来访问。
sudo lokkit -s http -s ssh
```

- 再执行
```
sudo yum makecache
sudo yum install gitlab-ce
sudo gitlab-ctl reconfigure  #Configure and start GitLab
```

- 修改密码
```
gitlab-rails console -e production
user = User.where(id:1).first
user.password='123456'
user.save!
```


#### 安装参考链接
- https://www.jianshu.com/p/b04356e014fa

### 安装包安装
- 下载
```
wget https://mirrors.tuna.tsinghua.edu.cn/gitlab-ce/yum/el7/gitlab-ce-10.0.0-ce.0.el7.x86_64.rpm
wget https://mirrors.tuna.tsinghua.edu.cn/gitlab-ce/yum/el7/gitlab-ce-14.3.2-ce.0.el7.x86_64.rpm
```

- 安装
```
rpm -i gitlab-ce-10.0.0-ce.0.el7.x86_64.rpm
```

- 修改配置:指定服务器ip以及自定义端口
```
vim  /etc/gitlab/gitlab.rb
修改external_url
```

- 重置并启动GitLab
```
gitlab-ctl reconfigure
gitlab-ctl restart
```

- 访问GitLab Web
```
如果没有域名，直接输入服务器ip和指定端口进行访问
初始账户: root 密码:5iveL!fe
```

#### 参考链接
- https://www.cnblogs.com/zhangycun/p/10963094.html



## 常见问题
### 访问出现502错误
- 8080端口被暂用原因
```
Whoops, GitLab is taking too much time to respond.
关闭8080端口对应app或修改端口
参考url:https://blog.csdn.net/mqdxiaoxiao/article/details/104422826
```

## gitlab目录结构
```
/opt/gitlab/ 　　                          # 主目录
/etc/gitlab/ 　　                          # 放置配置文件
/var/opt/gitlab/ 　　                      # 各个组件
/var/log/gitlab/ 　　                      # 放置日志文件
/var/opt/gitlab/git-data/repositories 　　 # 数据库的地址　　
/var/opt/gitlab/postgresql/data 　　       # gitlab组和项目的地址
/etc/gitlab/gitlab.rb                      # gitlab配置文件
```

## 启动日志
```
[root@dev129 zp]# gitlab-ctl restart
ok: run: alertmanager: (pid 70668) 1s
ok: run: gitaly: (pid 70679) 0s
ok: run: gitlab-exporter: (pid 70696) 1s
ok: run: gitlab-workhorse: (pid 70700) 0s
ok: run: grafana: (pid 70710) 0s
ok: run: logrotate: (pid 70724) 0s
ok: run: nginx: (pid 70732) 0s
ok: run: node-exporter: (pid 70739) 0s
ok: run: postgres-exporter: (pid 70745) 0s
ok: run: postgresql: (pid 70755) 0s
ok: run: prometheus: (pid 70765) 1s
ok: run: puma: (pid 70920) 0s
ok: run: redis: (pid 70926) 1s
ok: run: redis-exporter: (pid 70936) 0s
ok: run: sidekiq: (pid 70951) 0s
[root@dev129 zp]#
```
- 参考url:https://www.cnblogs.com/kevingrace/p/5985918.html

## 重置指定用户密码
```
https://baijiahao.baidu.com/s?id=1710986123716406076&wfr=spider&for=pc
```

## 迁移项目到gitlab
```
git clone --mirror <URL to my OLD repo location>
cd <New directory where your OLD repo was cloned>
git remote set-url origin <URL to my NEW repo location>
git push -f origin
```

## git 修改远程地址
```
git remote rm origin
git remteo add origin git@192.168.2.129:myb/myb.git
```

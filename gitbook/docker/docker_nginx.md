# docker nginx
## 基本命令
```
#查看容器
docker ps

#创建并运行一个容器nginx127
docker run --name=nginx127 -p 8081:80 -d docker.io/nginx

#进入容器nginx127
docker exec -it nginx127 /bin/bash

#退出容器
exit

#停止容器
docker stop nginx127

#删除容器
docker rm nginx127
```

## 配置nginx 密码访问
- 修改容器内配置

```
#查看运行容器的ID
docker ps

#进入nginx容器
docker exec -it 容器ID /bin/bash

#容器内部操作
#更新软件源
apt-get update

#安装apache2-utils
apt-get install apache2-utils

#创建用户名
htpasswd -c /etc/nginx/passwd.db 用户名

#输入密码（自动弹出）
New password:
Re-type new password:

#查看用户和密码
cat /etc/nginx/passwd.db

#退出
exit
```

- 修改nginx配置文件
```
server {
    listen       80;
    server_name  域名;

    access_log  /var/log/nginx/logging.access.log  main;

    location / {
        auth_basic "Please input password"; #这里是验证时的提示信息 
            auth_basic_user_file /etc/nginx/passwd.db;
        proxy_set_header  Host  $http_host;
        proxy_set_header  X-Real-IP  $remote_addr;
        proxy_set_header  X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_pass   http://IP:8088; 
    }

    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /usr/share/nginx/html;
    }
}
```

- [docker nginx 配置密码访问](http://t.zoukankan.com/yanglei-xyz-p-12212530.html)
- [docker nginx 配置转发](https://www.cnblogs.com/yucongblog/p/13428535.html)

## mysql nginx 转发

```
#user  nobody;
worker_processes  1;

#error_log  logs/error.log;
#error_log  logs/error.log  notice;
#error_log  logs/error.log  info;

#pid        logs/nginx.pid;


events {
    worker_connections  1024;
}

stream {
    upstream mysql_proxy_zp {
        hash $remote_addr consistent;
        server mybonline-inet.mysql.rds.aliyuncs.com:8000 weight=5 max_fails=3 fail_timeout=30s;
    }

    server {
#数据库服务器监听端口
        listen 8000;
        proxy_connect_timeout 10s;
#设置客户端和代理服务之间的超时时间，如果5分钟内没操作将自动断开。
        proxy_timeout 300s;
        proxy_pass mysql_proxy_zp;
    }
}
```


## nginx配置代理上网
```
#user nobody;
worker_processes 1;
error_log /var/log/nginx/error.log debug;

events {
    worker_connections 1024;
}

http {
    resolver 8.8.8.8;
    server {
        listen 8088;
        location / {
            proxy_pass http://$http_host$request_uri;
        }
    }
```

## windows 安装与使用ngin
```
https://www.cnblogs.com/jiangwangxiang/p/8481661.html
http://nginx.org/en/download.html
```

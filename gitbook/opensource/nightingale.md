# 夜莺
## 部署
- https://blog.csdn.net/yanggd1987/article/details/109007315
- [centos7部署夜莺](https://idc.wanyunshuju.com/li/1850.html)
- [三分钟构建自动化运维平台-nightingale(夜莺)](https://blog.csdn.net/weixin_43546282/article/details/109012603)
```
yum install -y mariadb* redis nginx
```

- mariadb开机自启
```
systemctl enable mariadb
```

- 启动mariadb
```
systemctl start mariadb
```

- 查询mysql进程
```
ps aux | grep mysql
```

- 数据库初始化
```
mysql_secure_installation
```

- redis 开机自启动
```
systemctl enable redis
```

- 启动redis
```
systemctl start redis
```


- nginx开机自启动
```
systemctl enable nginx
```

- 2、下载我们编译好的二进制到/home/n9e目录，如果要更换目录，要注意修改nginx.conf，建议先用这个目录，玩熟了再说

```
mkdir -p /home/n9e
cd /home/n9e
wget http://116.85.64.82/n9e.tar.gz
tar zxvf n9e.tar.gz
```

- 3、初始化数据库，这里假设使用root账号，密码1234，如果不是这个账号密码，注意修改/home/n9e/etc/mysql.yml

```
cd /home/n9e/sql
mysql -uroot -p1234 < n9e_ams.sql
mysql -uroot -p1234 < n9e_hbs.sql
mysql -uroot -p1234 < n9e_job.sql
mysql -uroot -p1234 < n9e_mon.sql
mysql -uroot -p1234 < n9e_rdb.sql
```

## video
- https://www.bilibili.com/video/BV13z411q7in/

## 测试地址
- http://139.9.240.143/rdb/resources-tree

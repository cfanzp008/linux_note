## mssql for linux
### centos 安装 mssql-server-2017
1. 帮助: https://www.cnblogs.com/xuanqust/p/11106679.html
curl https://packages.microsoft.com/config/rhel/7/mssql-server-2017.repo > /etc/yum.repos.d/mssql-server.repo
yum install -y mssql-server
sudo /opt/mssql/bin/mssql-conf setup
pwd:admin2O2O

2. 启动
systemctl start mssql-server
systemctl restart mssql-server
systemctl stop mssql-server
systemctl status mssql-server
* 具体配置路劲为/opt/mssql/bin/mssql-conf


###  mssql-cli
1. 安装
curl -o /etc/yum.repos.d/mssql-server.repo https://packages.microsoft.com/config/centos/7/prod.repo
yum install mssql-cli -y
或:
pip install mssql-cli
github:https://github.com/dbcli/mssql-cli/

2. 使用
- 帮助:https://blog.csdn.net/a13568hki/article/details/107781585
mssql-cli -S <server name> -U <user name> -d <database name>
mssql-cli -S 192.168.2.127,1433 -U sa -P 'admin2O2O'
- 查看数据库
\ld
- 进入数据库
use test
- 查看表
\lt



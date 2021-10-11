## mysql 查看t_account表结构

```
desc t_account;
show columns from t_account;

describe t_account;
show create table t_account;
```

## mysql 查看存储过程

```
select `name` from mysql.proc where db = 'xx' and `type` = 'PROCEDURE'   //存储过程
select `name` from mysql.proc where db = 'xx' and `type` = 'FUNCTION'   //函数

show create procedure register; //存储过程register

show procedure status; //存储过程

show function status;     //函数
```


## 解决数据库注册中文写入失败的问题

- 问题描述：
    调用注册存储过程是，nickname 含中文写入失败

- 解决方法:
   将存储过程中文参数由varchar 改为nvarchar类型

## 解决数据库在插入数据中包含表情特殊符

- 问题描述：
    在插入数据的过程中，如玩家名字，包含表情 插入数据失败

- 解决方法
    将字段字符集设置utf8mb4，排序规则设置utf8mb4_unicode_ci
    t_account:nickname t_record_circle:circle_scores t_record_round:round_scores等等

## 修改密码
- 使用 mysqladmin 命令修改 MySQL 的 root 用户密码格式为
```
mysqladmin -u用户名 -p旧密码 password 新密码。
```

## mysql 工具
- 官方下载地址:

  * [CN1](https://download.navicat.com.cn/download/navicat15-premium-cs.AppImage)
  * [CN2](https://download3.navicat.com/download/navicat15-premium-cs.AppImage)
  * [EN1](https://download3.navicat.com/download/navicat15-mysql-en.AppImage)
- windows版本激活
  * [https://www.cnblogs.com/hfxtest/p/12513210.html](https://www.cnblogs.com/hfxtest/p/12513210.html)
- [navicat for linux 破解](https://gitee.com/yangzhuoming/navicat-keygen/blob/linux/README.zh-CN.md)
  * steps:
```
  sudo mount -o loop ~/tools/bin/navicat15-premium-cs.AppImage ~/tools/navicat15-premium-cs
  cp -r ~/tools/bin/navicat15-premium-cs ~/tools/bin/navicat15-premium-cs-patched
  sudo umount ~/tools/bin/navicat15-premium-cs
  rm -rf ~/tools/navicat15-premium-cs
```
  * [注册机编译](https://gitee.com/yangzhuoming/navicat-keygen/blob/linux/doc/how-to-build.md)

## mysql备份数据库
```
[root@ecs-7d02 db]# cat bak_db.sh
#help:123456
dt=$(date +%Y%m%d_%H%M%S)
host=192.168.0.215
des_file=gzzjdb_bak_$dt.sql
bak_file=gzzjdb_bak_$dt.tar.gz
mysqldump -h$host -P8000 -uroot -p gzzjdb --routines --password=GZZJ@123456 > $des_file
tar -czvf $bak_file $des_file
mv $bak_file ./bak/
rm -f $des_file
```

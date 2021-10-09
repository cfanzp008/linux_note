## net命令
- net time \\ip 查看系统时间 eg: net time 127.0.0.1
- net share 查看共享
- net user 查看用户
- net user abc 123 /add 新建用户:新建用户abc密码123
- net user abc 123 修改用户密码:修改用户abc的密码为123
- net user abc /del 删除用户:删除用户abc
- net localgroup administrators 查看管理员组成员
- net localgroup administrators abc /add 把abc 加入管理员组
- net use f: \\192.168.2.11\share 123456 /user:administrator  将其他电脑的share目录映射到本机的f盘
- net use f: /del
- net use * /del

## 常用命令 cd,dir,mkdir,del,echo,attrib,md,cls
- cls 清屏
- del ****.txt
- echo hello >> test.txt
- md a 创建a目录

- type 类似于tail
type a.txt | more

- copy con 文件名:拷贝屏幕内容到文件里面， C-z enter结束

- attrib +h test.txt:给文件test.txt添加隐藏属性
- attrib -h test.txt:给文件test.txt取消隐藏属性

- fsutil file createnew d:\system.ini 10
- assoc .txt=exefile  修改文件关联
- assoc .txt=txtfile
- assoc .txt 查看.txt文件关联
- ren 重命名文件或文件夹

## dhcp服务器
- ipconfig release/renew/all 释放ip/续约/查看信息


## dns服务器
- ipconfig /flushdns
- nslookup


## win+r
- control 进入控制面板
- gpedit.msc 进入组策略配置
- services.msc 进入服务


## win7
- 强制关机--->修复
- sethc ---> cmd
- shift+5

## icacls
- icacls D:\tools\cygwin\ /T /grant Administrator:F 
  1. 将cygwin文件夹以及其子文件夹里修改为Administrator所有
  2. 赋予完全控制权限
  3. 适用于文件权限不对无法删除或修改文件的情况

## 控制台乱码
- chcp 65001

## 查看连接用户
- query user 使用远程桌面管理命令query，
  query命令可以显示远程连接到服务器的会话、 运行的进程以及远程登录的用户，

## 查看磁盘
1. diskpart
   - list disk

## netcat瑞士军刀实现电脑远程控制termux
### 关于nc实现远程控制termux
1. 首先termux安装namp
  pkg install namp
2. windows系统安装netcat
此为netcat下载连接
下载得到zip压缩包，解压得到里面的exe文件
将exe文件放在c盘用户文件夹里面
最后打开windows命令行，输入nc相关的命令即可使用

3. 如何建立连接
termux： nc -lp 333 -c bash

windows：nc -nv 1.1.1.1 333
或者反向
windows：nc -lp 333

termux： nc -nv 1.1.1.1 333 -c bash

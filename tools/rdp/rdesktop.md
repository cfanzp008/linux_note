## install
sudo pacman -S rdesktop

## use
- demo1
rdesktop -g 1024x768 -a 16 -u administrator -p 0 -0 192.168.2.113:3389

- demo2
rdesktop -g 1024x768 -a 16 -u administrator -p 0 -0 192.168.2.113

- demo3
rdesktop -g 1280x720 -a 16 -u administrator -p0 -0 118.31.214.249:9999

## help:
命令参数常用的有：
    -u    用户名
    -p    密码
    -n    客户端主机名（显示windows任务管理器中的连接客户端名）
    -g    桌面大小（ 宽＊ 高）[也可以用 x(小写的X)]
    -f    全屏模式,从全屏模式切换出来按Ctrl+Alt+Enter
    -a    连接颜色深度（最高到16位），一般选16才会显示真彩色（window7支持32位）
    -0    数字0表示连接上windows控制台，等效mstsc/console命令

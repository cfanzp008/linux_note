##freerdp
### download
1. github
   - https://github.com/FreeRDP/FreeRDP/releases/tag/2.0.0
   - https://pub.freerdp.com/releases/
   - https://pub.freerdp.com/releases/freerdp-2.0.0.tar.gz

### 安装
1. Ubuntu
   sudo apt install freerdp2-x11

2. Arch Linux
   sudo pacman -S freerdp

### 使用
1. https://zzz.buzz/zh/2018/01/03/rdp-to-windows-from-linux/
   - xfreerdp /v:192.168.2.133:3389 /u:Administrator /p:PASSWORD
   - /w:1920 /h:1080 指定桌面大小
   - /f 全屏连接。
   - 连接远程桌面后，可以通过 Ctrl + Alt + Enter 切换全屏/窗口显示。
   - /multimon (多显示器支持),
   - +drives (将本地挂载的磁盘共享到远程桌面),
   - +compression (启用压缩),
   - +fonts (平滑字体),
   - +aero (Aero特效),
   - +window-drag (拖动窗口时显示窗口内容),
   - +menu-anims (菜单动画)。
   - 更多命令行参数，请参考CommandLineInterface · FreeRDP/FreeRDP Wiki。
   - https://github.com/FreeRDP/FreeRDP/wiki/CommandLineInterface

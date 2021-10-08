## 下载工具
1. aria2c
- 安装
```
yum install aria2
```

- 使用 demo:

```
aria2c https://mirrors.tuna.tsinghua.edu.cn/osdn/storage/g/m/ma/manjaro/xfce/18.0.4/manjaro-xfce-18.0.4-stable-x86_64.iso
```

- 下载torrent文件 BT下载
种子和磁力下载：
```
aria2c ‘xxx.torrnet‘
aria2c '磁力链接'
```
列出种子内容：

```
aria2c -S xxx.torrent
```
下载种子内编号为1、4、5、6、7的文件，如：

```
aria2c --select-file=1,4-7 xxx.torrent
```
设置bt端口：

```
aria2c --listen-port=3653 ‘xxx.torrent’
```

- 限速下载
单个文件最大下载速度：

```
aria2c --max-download-limit=300K -s10 -x10 'http://xx.com/xx'
```

整体下载最大速度：

```
aria2c --max-overall-download-limit=300k -s10 -x10 'http://xx.com/xx'
```

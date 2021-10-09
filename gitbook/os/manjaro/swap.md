## 首先确认是否添加过swap分区
为了防止出现任何以外，请先看一下内存中是否已经有swap:
```
free -m
```
一般情况下运行命令后会出现如下的内容:

```
total              used       free     shared    buffers     cached
Mem:               1840       1614     226       15          36       1340
-/+ buffers/cache:            238      1602
Swap:              0          0        0
```
如果你看到 Swap 分区中是0的话，那么就可以接着看第二步

如果不是的话说明你已经有了swap分区，你可以通过下面的命令查看swap文件:

```
swapon -s
```
 

## 第二步，创建Swap分区
使用dd来创建一个空的swap文件（2G为例）:

```
dd if=/dev/zero of=/swapfile count=2048 bs=1M
```
其中 dd 命令的内容可以按自己的需求修改:

```
if =输入文件（或设备名称）。
of =输出文件（或设备名称）。
ibs = bytes 一次读取bytes字节，即读入缓冲区的字节数。
skip = blocks 跳过读入缓冲区开头的ibs*blocks块。
obs = bytes 一次写入bytes字节，即写入缓冲区的字节数。
bs = bytes 同时设置读/写缓冲区的字节数（等于设置ibs和obs）。
cbs = byte 一次转换bytes字节。
count=blocks 只拷贝输入的blocks块。
```

然后你应该会看到如下的反馈：

2048+0 records in
2048+0 records out
2147483648 bytes (2.1 GB) copied, 10.5356 s, 204 MB/s
然后我们来验证一下是否已经生成完成:

ls / | grep swapfile
如果正常生成的话你可以看到 swapfile 文件

## 第三步，激活Swap分区
Swap分区需要读写的权限，所以运行命令授权:

chmod 600 /swapfile
查看授权是否成功:

ls -lh /swapfile
如果成功的话你可以看到如下反馈:

-rw------- 1 root root 2.0G Oct  2 18:47 /swapfile
然后挂载Swap分区:

mkswap /swapfile
你应该能看到如下的反馈:

Setting up swapspace version 1, size = 2097148 KiB
no label, UUID=ff3fc469-9c4b-4913-b653-ec53d6460d0e
 

Step 4: Turn swap on
完成之前的步骤之后你的swap分区已经可以使用了，我先只要打开它就好:

swapon /swapfile
这时候你可以用 free 命令再次查看Swap分区是否已经开始运行

```
free -m
```

```
total       used       free     shared    buffers     cached
Mem:          1840       1754         86         16         23       1519
-/+ buffers/cache:        210       1630
Swap:         2047          0       2047
```
如果 Swap 空间不是 0 就说明你成功了

## 第五步，开机启动设置
一般而言Swap是没有开机启动的，所以你需要编辑/etc/fstab 文件，我一般用 nano，你也可以用vi或者vim达到同样的效果

```
vim /etc/fstab
```
在末尾加上如下内容:

```
/swapfile   none    swap    sw    0   0
```
保存之后我们就完成了Swap的全套设置

## 修改swappiness
- 查看swappiness
```
cat /proc/sys/vm/swappiness
```

- 修改swappiness
```
sudo sysctl vm.swappiness=10
sudo vim /etc/sysctl.conf
在这个文档的最后加上这样一行:
vm.swappiness=10
```

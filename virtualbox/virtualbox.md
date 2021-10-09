## 安装
sudo pacman -S virtualbox
这里需要选择与当前内核相同的内核模块比如笔者正在使用的内核版本为414，则需要安装linux414-virtualbox-host-modules

## 安装扩展包
sudo pacman -Ss virtualbox-ext-oracle #安装扩展包
sudo gpasswd -a $USER vboxusers #添加当前用户到vboxusers
这里需要将$USER替换为你的用户名，如果不需要使用USB外设，可以不执行此操作。
重新启动系统或执行sudo modprobe vboxdrv

## 命令行管理virtualbox

### 1. 开启虚拟机
- help:https://www.cnblogs.com/pinganzi/p/5056085.html
- vboxmanage startvm win2008 --type gui

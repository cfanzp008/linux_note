## 同步时间
- 设置硬件时钟
sudo hwclock --systohc

- 同步时间
-- ntpdate -u ntp.api.bz
timedatectl set-ntp yes

## pacman

### 设置源
1. step1
sudo pacman-mirrors -i -c China -m rank
sudo pacman -Syy

2. step2
/etc/pacman.conf:
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch

### 导入GPG key
sudo pacman -Syy && sudo pacman -S archlinuxcn-keyring

### key 签名问题解决办法
sudo pacman-key --init
sudo pacman-key --populate

### x32 mirrorlist
http://mirrors.zju.edu.cn/manjaro/x32-unstable/state

### 更新系统
sudo pacman -Syyu

1. 输入法
sudo pacman -S fcitx-im 
sudo pacman -S fcitx-configtool
sudo pacman -S fcitx-sogoupinyin

2. 配置sudo vim ~/.xprofile
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

## 必备
1. screenfetch
sudo pacman -S screenfetch

2. screenkey
sudo pacman -S screenkey

3. yaourt
sudo pacman -S yaourt

4. sougou
sudo pacman -S fcitx-sogoupinyin

5. wechat
sudo pacman -S electronic-wechat(not support now)

6. neteasy music
yaourt musicbox
help:
https://github.com/darknessomi/musicbox

7. chromium 中文乱码
sudo pacman -S wqy-microhei

8. 安装vmware https://www.jianshu.com/p/de571b44ab60
9. vmware download:https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html

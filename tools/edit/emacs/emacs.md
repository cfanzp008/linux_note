## 基础
### install
```
sudo yum install gcc make ncurses-devel giflib-devel libjpeg-devel libtiff-devel
wget http://ftp.gnu.org/gnu/emacs/emacs-26.3.tar.gz
tar -xzvf emacs* && cd emacs*
./configure  --without-selinux
sudo yum install -y libXpm-devel
./configure --without-selinux --with-x-toolkit=no --with-gnutls=no
make && sudo make install
emacs --version
```
- help:https://www.linuxidc.com/Linux/2019-09/160451.htm

### 基本配置
1. 配置emacs默认在终端打开
```
alias="emacs -nw"
```

### emacs常用快捷键
1. C-x,C-c退出
2. C-x,C-s保存


### spacemacs
1. github:https://github.com/syl20bnr/spacemacs


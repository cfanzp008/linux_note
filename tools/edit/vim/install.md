## install vim
### 1. rm old vim
```
yum -y remove vim
```

### 2. download vim
```
wget -O vim8.2.0139.zip https://github.com/vim/vim/archive/v8.2.0139.zip
```

### 3. install vim
```
unzip vim8.2.0139.zip  && cd vim-8.2.0139/src
./configure --prefix=/usr/local/vim8/ --enable-pythoninterp=yes --with-python-config-dir=/usr/lib64/python2.7/config
make && make install
ln -s /usr/local/vim8/bin/vim /usr/bin/vim
vim --version
```


### 4. 插件依赖安装
- github:https://github.com/BurntSushi/ripgrep
- install:https://github.com/BurntSushi/ripgrep#installation
sudo yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
sudo yum install ripgrep


### 5. 帮助文档
1. github 下载https://github.com/vim/vim/releases
2. 教程1:https://www.cnblogs.com/nidey/p/8657016.html
3. 教程2:https://blog.csdn.net/weixin_43226231/article/details/104651092

1. linux tools

## 实用工具
###  fanyi 翻译工具
1. 安装: npm install fanyi -g
2. 注意linux版本需要festval来支持发音，可以屏蔽:lib/fanyi/...../index.js中发音相关代码来使功能正常

###  translate-shell 翻译工具
1. 安装:
  - sudo pacman -S translate-shell
  - 下载安装:
      wget git.io/trans
      chmod +x ./trans
      sudo mv trans /usr/bin/
  - github 安装:
    git clone https://github.com/soimort/translate-shell && cd translate-shell
    make
    make install

2. 使用
   - 英译中: trans :zh good
   - 中译英: trans :en good
   - trans [原语种]:[目标语种] [要查的词|字|句]
3. 查看语言代码:
   - trans -R
   - trans -T
   - 帮助: https://blog.csdn.net/linuxprobe2017/article/details/78795009

### jq 命令行json格式化工具
1. 用法：
  - cat 1.json | jq
  - cat 1.json | jq -C 带颜色
  - cat 1.json | jq -M 不带颜色
  - jq . 1.json  显示所有
  - jq '.[0]' TableCard.json 显示匹配的0号
  - jq '.[0] | length' TableCreateConfigList.json 获取元素个数
2. 帮助：https://blog.csdn.net/weixin_33842328/article/details/85064554


### graphviz 命令行绘制流程图
1. 帮助：
  - 官网：http://www.graphviz.org/download/source/
  - 相关介绍：https://www.zhihu.com/question/28596616


### axel
1. 使用
  - axel -n 20 http://www.baidu.com/download/a.zip
  - download:https://github.com/axel-download-accelerator/axel.git

### compare 比较图片

### how2


### tldr  手册页简化工具

### fpp(pathpicker)
1. cd /usr/local
2. git clone https://github.com/facebook/PathPicker.git

### rg(ripgrep)
1. github:https://github.com/BurntSushi/ripgrep
2. install
   sudo pacman -S ripgrep
3. centos install:
   sudo yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
   sudo yum install ripgrep

### you-get

### lsix
1. 安装：
  - sudo pacman -S imagemagick
  - 下载：https://imagemagick.org/script/download.php
  - https://github.com/ImageMagick/ImageMagick.git

2. 使用帮助:https://ywnz.com/linuxml/3940.html


### mobaxterm
1. 安装: https://mobaxterm.mobatek.net/download-home-edition.html
  - axel -n 20 https://download.mobatek.net/2032020060430358/MobaXterm_Portable_v20.3.zip

### vim 插件coc
1. 安装
  - Plug 'neoclide/coc.nvim', {'branch': 'release'}
2. 帮助
  - https://www.jianshu.com/p/55cf1fa7a467
  - github:https://github.com/neoclide/coc.nvim/wiki/Language-servers


### mycli
1. centos 安装
  - 升级python2到python3
     1. wget https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz
     2. ./configure --prefix=/usr/local/python3
     3. make
     4. make install
     5. mv /usr/bin/python /usr/bin/python_bak
     6. ln -s /usr/local/python3/bin/python3 /usr/bin/python
     7. pip3.6 install mycli
     8 .ln -s /usr/local/bin/mycli /usr/bin/mycli

### cmus 音乐播放器
-  https://github.com/cmus/cmus

### 制作个人的博客笔记系统
1. markdown + pandoc + makefile + git(github)参考：http://www.mikewootc.com/wiki/tool/sitebuild/mikewiki.html

###  磁盘相关
- duf 查看磁盘使用情况
- du 查看各个文件占用磁盘情况
- df 查看磁盘暂用情况


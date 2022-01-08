# vim
## 安装
```
$ cd /usr/local/src/
$ wget https://codeload.github.com/vim/vim/tar.gz/v8.0.0134
```

## 解压
```
$ tar zxf v8.0.0134
```

## 编译
```
$ cd vim-8.0.0134/
$ ./configure --with-features=huge \
              --enable-multibyte \
              --enable-rubyinterp=yes \
              --enable-pythoninterp=yes \
              --with-python-config-dir=/usr/lib64/python2.7/config \
              --enable-python3interp=yes \
              --with-python3-config-dir=/usr/local/python3/lib/python3.6/config-3.6m-x86_64-linux-gnu \
              --enable-perlinterp=yes \
              --enable-luainterp=yes \
              --enable-gui=gtk2 --enable-cscope --prefix=/usr
```

```
 ./configure --with-features=huge --with-luajit --enable-luainterp=yes--enable-fail-if-missing --with-lua-prefix=/usr/local --prefix=/usr/local/vim/vim8 --enable-multibyte --enable-rubyinterp=yes --enable-pythoninterp=yes --with-python-config-dir=/usr/lib64/python2.7/config --enable-python3interp=yes --with-python3-config-dir=/usr/local/python3/lib/python3.6/config-3.6m-x86_64-linux-gnu --enable-perlinterp=yes  --enable-luainterp=yes --enable-gui=gtk2 --enable-cscope
```


```
/bin/perl -e 'unless ( $] >= 5.005 ) { for (qw(na defgv errgv)) { print "#define PL_$_ $_\n" }}' > auto/if_perl.c
/bin/perl /usr/bin/xsubpp -prototypes -typemap /usr/share/perl5/ExtUtils/typemap if_perl.xs >> auto/if_perl.c

$ make VIMRUNTIMEDIR=/usr/share/vim/vim80 
$ sudo make install
```

- 安装成功后，通过/usr/local/vim8/bin/vim运行vim命令。将vim命令路径添加到系统变量，就可以直接运行vim了。

```
$ /usr/local/vim/vim8/bin/vim /etc/profile.d/path.sh
```

添加以下内容：
```
#!/bin/bash
export PATH=$PATH:/usr/local/vim/vim8/bin/

$ source /etc/profile.d/path.sh
```

## 帮助
- [linux-Centos7安装python3并与python2共存](https://www.cnblogs.com/JahanGu/p/7452527.html)

## vim插件
### 注释插件
#### vim-commentary
- gitbub:[vim-commentary](https://github.com/tpope/vim-commentary)
- 优点:好用
- 安装
- 使用:https://blog.csdn.net/jpch89/article/details/94453692

### 语法检测
#### syntastic
- [syntastic](https://github.com/vim-syntastic/syntastic)

#### ale
- [ale](https://github.com/dense-analysis/ale)
- 优点:异步,不会有卡顿感
- 安装:
```
Plug 'dense-analysis/ale'
```

#### lua-checker
- luacheck:[gitee](https://gitee.com/bobu/luacheck)
- [luacheck使用](http://brightguo.com/luacheck%E4%BD%BF%E7%94%A8/)
- lua-rocks:[github](https://github.com/luarocks/luarocks/wiki/Installation-instructions-for-Unix)

### quickfix使用
```
quickfix功能将编译过程中产生的错误信息保存到文件中，
然后vim利用这些信息跳转到源文件的对应位置，
我们就可以进行错误的修正，
之后跳到下一个错误重复上述操作，
从而极大地提高编译错误的修改效率。
:cc     显示详细错误信息
:cp     跳到上一个错误
:cn     跳到下一个错误
:cw     如果有错误列表，则打开quickfix窗口，没有则什么也不错
:cope(n) 打开quickfix窗口，可以在后面添加窗口高度参数，如10行： :copen 10
:ccl(ose) 关闭quickfix窗口
```

## vim基本用法
e: end 移动到一个单词的最后一个字符

### 命令行模式(Ex模式)
- {start},{end}都是地址,这里用行号代表地址
:1,5p 打印第1到第5行，光标移动到第5行(:{start},{end}p)
- 1代表第1行的地址
- .代表当前行的地址
- %代表当前文件中的所有行
- $代表行尾
- '<代表高亮选区的开始
- '>代表高亮选区的结束
- 'm 包含位置标记m的行

- normal命令:
```
:4,6normal A; 在第4行到第6行后面加入分号
:4,6normal i// c++中注释4到6行
:4,6normal i-- lua中注释4到6行
```

- @:命令重复上一个Ex

- 回溯历史命令
```
:ag up/down键:查看含有ag的历史命令
```

- 命令行窗口
```
Ctrl+f:命令行模式切换到命令行窗口
q:打开命令行Ex窗口
q/打开命令行查询窗口
```
### 执行Shell中的程序
- ：!{cmd} 单次执行命令
- :shell 开启一个交互式的shell 使用exit退出返回到vim
- CTRL Z:挂起Vim返回bash执行命令 fg返回Vim,jobs查看后台挂起进程

### 移动
- j,k移动实际行
- gj,gk移动屏幕行(在有折行的情况下十分有用)

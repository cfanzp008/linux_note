$ cd /usr/local/src/
$ wget https://codeload.github.com/vim/vim/tar.gz/v8.0.0134
$ tar zxf v8.0.0134

https://www.cnblogs.com/JahanGu/p/7452527.html

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

 ./configure --with-features=huge --with-luajit --enable-luainterp=yes--enable-fail-if-missing --with-lua-prefix=/usr/local --prefix=/usr/local/vim/vim8 --enable-multibyte --enable-rubyinterp=yes --enable-pythoninterp=yes --with-python-config-dir=/usr/lib64/python2.7/config --enable-python3interp=yes --with-python3-config-dir=/usr/local/python3/lib/python3.6/config-3.6m-x86_64-linux-gnu --enable-perlinterp=yes  --enable-luainterp=yes --enable-gui=gtk2 --enable-cscope


/bin/perl -e 'unless ( $] >= 5.005 ) { for (qw(na defgv errgv)) { print "#define PL_$_ $_\n" }}' > auto/if_perl.c
/bin/perl /usr/bin/xsubpp -prototypes -typemap /usr/share/perl5/ExtUtils/typemap if_perl.xs >> auto/if_perl.c

$ make VIMRUNTIMEDIR=/usr/share/vim/vim80 
$ sudo make install

安装成功后，通过/usr/local/vim8/bin/vim运行vim命令。将vim命令路径添加到系统变量，就可以直接运行vim了。

$ /usr/local/vim/vim8/bin/vim /etc/profile.d/path.sh

添加以下内容：
#!/bin/bash
export PATH=$PATH:/usr/local/vim/vim8/bin/

$ source /etc/profile.d/path.sh
$ vim

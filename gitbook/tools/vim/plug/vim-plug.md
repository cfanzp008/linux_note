# vim-plug
## 说明
1. vim-plug 是一个Vim插件管理器，
2. 利用异步并行可以快速地安装、更新和卸载插件。
3. 它的安装和配置都非常简单，而且在操作过程中会给出很多易读的反馈信息，是一个相当友好精简的插件。

## 安装配置
1. 下载 plug.vim 文件，
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

2. 根据操作系统不同，放置在以下autoload目录中：

  * Linux: ~/.vim/autoload
```
mkdir ~/.vim/
mkdir ~/.vim/autoload/
cp plug/plug.vim ~/.vim/autoload
```

  * Windows: ~\vimfiles\autoload\plug.vim


3. 在vimrc配置文件中增加plug-vim部分，示例如下：
```
call plug#begin('~/.vim/plugged')
" Shorthand notation for plugin
Plug 'foo/bar'
call plug#end()
```

## 插件命令
- 安装插件:PlugInstall
- 卸载插件:PlugClean
- 更新vim-plug:PlugUpgrade
- 更新插件:PlugUpdate
- 插件状态:PlugStatus

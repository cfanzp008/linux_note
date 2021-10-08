## install
### 方法1
sudo pacman -S fzf

### 方法2
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
cd ~/.fzf/
./install

## key
1. 上下选择:C-k,C-j
2. 退出:C-c
3. 列出当前目录: C-T
4. 历史搜索: C-R
5. 选择目录: Alt-c
6. NB用法，用vim打开文件: vim $(fzf)
7. NB用法，用vim打开文件: vim $(ag findparm -l | fzf)
8. 切换目录:cd $(find * -type d | fzf)

## use
1. cmd | fzf
2. cd *****<Tab>
3. vim **<Tab>
4. oh-my-zsh

## preview
```
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
```

## vim
1. cmd
```
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
```


## 参考文档
1. https://www.cnblogs.com/dylancao/p/10833431.html
2. https://www.jianshu.com/p/bb91582317ed
3. https://segmentfault.com/a/1190000015977368

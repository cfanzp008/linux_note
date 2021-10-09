# vim-commentary
## 插件地址:https://github.com/tpope/vim-commentary

## 插件用法
单行注释：
普通模式下 gcc，可以配合 . 使用。
普通模式下 vgc、Vgc、<C-v>gc，即先进入可视模式再 gc。
多行注释：
可视模式下 gc，三种可视模式都可以使用，会注释掉可视模式选区跨越的所有行。
[count]gc，一次性注释 count 行。
撤销上次注释动作：用 u 即可。
取消单行注释：
普通模式下 gcc
普通模式下 gcu，如果有多行也会取消多行注释
先进入可视模式，再 gc
取消多行注释：
普通模式下：gcu
普通模式下：gcgc
普通模式下：[count]gcc
先进入可视模式，再 gc

## 极简版用法
这里尽量选择直观或者最优解，用一句话概括该插件的核心用法。
单行注释用 gcc，多行注释先进入可视模式再 gc，取消注释用 gcu

## 使用方法
```
gcc     注释当前行（普通模式）
gc      可视模式下，注释当前选中的部分
gcu     撤销上一次注释的部分，可以是一行也可以是多行
gcgc    撤销注释当前行和邻近的上下两行
```


## 修改注释符号
```
"vim-commentary
"为python和shell等添加注释
autocmd FileType python,shell,coffee set commentstring=#\ %s
"修改注释风格
autocmd FileType java,c,cpp set commentstring=//\ %s
```

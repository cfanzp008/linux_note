# tmux
## install
```
yum install -y tmux
```

## 退出tmux
```
C-b d 退出tumx，并保存当前会话
或
tmux detach
```

## 重命名窗口
```
C-b + :
rename-window myb_dev
或
C-b + ,
```

## 重命名会话(Session)
```
C-b + :
rename-session myb_dev
或
C-b + $
```

## 防止退出时重命名窗口被重置
```
修改.tmux.conf
set-option allow-rename off
```

## 跳转pannel大小
```
Ctrl+b Ctrl+<arrow key>：按箭头方向调整窗格大小。
```

## 使用
- 打开：tmux
- 操作前缀:Ctrl + b
- 分割：%;b
- 关闭分割：x

- C-b ? 显示快捷键帮助
- C-b C-o 调换窗口位置，类似与vim 里的C-w
- C-b 空格键 采用下一个内置布局
- C-b ! 把当前窗口变为新窗口
- C-b " 模向分隔窗口
- C-b % 纵向分隔窗口
- C-b q 显示分隔窗口的编号
- C-b o 跳到下一个分隔窗口
- C-b 上下键 上一个及下一个分隔窗口
- C-b ALT-方向键 调整分隔窗口大小
- C-b c 创建新窗口
- C-b 0~9 选择几号窗口
- C-b c 创建新窗口
- C-b n 选择下一个窗口
- C-b l 切换到最后使用的窗口
- C-b p 选择前一个窗口
- C-b w 以菜单方式显示及选择窗口
- C-b t 显示时钟
- C-b ; 切换到最后一个使用的面板
- C-b x 关闭面板
- C-b & 关闭窗口
- C-b s 以菜单方式显示和选择会话
- C-b d 退出tumx，并保存当前会话，这时，tmux仍在后台运行，可以通过tmux attach进入 到指定的会话

## 其它命令
```
# 列出所有快捷键，及其对应的 Tmux 命令
$ tmux list-keys

# 列出所有 Tmux 命令及其参数
$ tmux list-commands

# 列出当前所有 Tmux 会话的信息
$ tmux info

# 重新加载当前的 Tmux 配置
$ tmux source-file ~/.tmux.conf
```

## 帮助
- [tmux的使用方法和个性化配置](https://www.cnblogs.com/chjbbs/p/5689011.html)
- [tmux 窗口重命名](http://blog.aka-cool.net/blog/2014/05/09/tmux-rename-window/)


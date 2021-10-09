# i3wm key
- 多屏显示
```
xrandr --output HDMI2  --auto --right-of HDMI-3
```
- mod
```
ctrl: $mod
```

- config
```
alt:Mod1
ctrl:Mod4
```

- 打开一个虚拟终端
```
mod+enter
```

- 拆分
```
mod+enter
mod+v ++ mod+enter;水平分割
mod+n ++ mod+enter;竖指分割
```

- 聚焦到父窗口
```
mod+a
```

- 进入工作区
```
mod+1,2,3...
```

- 移动窗口到其他工作区
```
mod+shift+1,2,3
```

- 全屏模式：
```
mod+f
```

- 三种模式：
```
splith/splitv: mod + e   mod+hjkl
stacking:      mod + s   mod+jk
tabbed:        mod + w   mod+hl
```

- 杀掉应用
```
mod+shift+q
```

- 重启i3
```
mod+shift+r
```

- 退出i3
```
mod+shift+e
```

- 浮动i3
```
mod+shift+space
```

- 打开应用
```
mod+d
```

- 小技巧:i3光标在virtualbox中，如何切换工作区？
1. 方法是按右边Ctrl键盘，xfreerdp被聚焦时同样适用。

- 截图工具flameshot
1. 安装 sudo apt-get install flameshot
2. 设置快捷键 bindsym Print --release exec /usr/bin/flameshot gui
3. 浮动for_window [class="flameshot"] floating enable
4. 保存剪贴板快捷键Ctrl-c
2. 使用按PrintScreen键

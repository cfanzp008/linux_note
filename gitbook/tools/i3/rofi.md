## rofi
- 安装
```
yaourt -S rofi
```

- 编辑 vim .i3/config,注释掉有 $mod+d 的那一行，添加:
```
bindsym $mod+d exec rofi -show run
```

- 重新加载配置
```
$mod+shift+r
```

- $mod+d 运行

- 切换到 cd ~/.config/rofi/
- 生成配置文件
```
rofi -dump-Xresources > config
```

- 选择你想要的主题即可
```
rofi-theme-selector
```

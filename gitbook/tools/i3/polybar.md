# polybar
## install
```
yaourt -S polybar
install -Dm644 /usr/share/doc/polybar/config $HOME/.config/polybar/config
```

## 配置
- 弄一份 example 的配置文件过来 编辑启动文件 vim ~/.config/polybar/launch.sh 如下：
```
#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
# polybar bar1 &
# polybar bar2 &
polybar example &

echo "Bars launched..."
```

#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
# polybar bar1 &
# polybar bar2 &
polybar example &

echo "Bars launched..."
vim ~/.i3/config
搜索 start_conky,注释掉
添加 exec_always --no-startup-id ~/.config/polybar/launch.sh
替换原来系统的 conky
注释掉 i3bar_command i3bar，添加 i3bar_command $HOME/.config/polybar/launch.sh。
$mod + shift + r 重新加载 i3

## other tools

yaourt -S ttf-unifont or yay -S ttf-unifont
yaourt -S siji-git


## polybar 不留边
我们可以修改config文件进行属性的设定。example的状态栏会有留边，我们可以修改border-size属性来取消。

border-size = 0
border-color = #00000000


## polybar无法透明化
- 如果你使用compton进行透明化，polybar可能会出现无法透明的情况。
  1. 可能与你的compton配置有关。
  2. 可能是你的polybar问题。

- 将[color]下的background修改为 background = #cc222222 ，从而实现透明化。

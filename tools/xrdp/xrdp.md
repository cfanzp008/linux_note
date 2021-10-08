## xrdp
### install
1. install xrdp
```
sudo pacman -S xrdp
```
2. install xorgxrdp
```
yaourt xorgxrdp
git clone https://github.com/neutrinolabs/xorgxrdp.git
```

3. install tigervnc
```
sudo pacman -S tigervnc
```

### config
#### 配置 xrdp
1. 修改配置文件 /etc/xrdp/sesman.ini
```
[Xorg] 
param = Xorg param = -config 
param = xrdp / xorg.conf 
param = -noreset 
param = -nolisten 
param = tcp 
param = -logfile 
param = .xorgxrdp。％s.log

# ++
param = -layout 
param = X11服务器
# ++
```

2. 修改配置文件 ~/.xinitrc 42行删除 --exit-with-session
#local dbus_args=(--sh-syntax --exit-with-session)
 local dbus_args=(--sh-syntax)

3. 进入默认i3:修改配置文件~/.xinitrc 12行
```
#SESSION=${1:-xfce}
SESSION=${1:-i3}
```

4. 添加配置文件:/etc/X11/Xwrapper.config,加入如下内容
```
allowed_users=anybody
needs_root_rights=auto
```

5. 配置xrdp 开机启动
```
sudo systemctl enable xrdp.service
```

6. 配置xrdp 关闭开机启动
```
sudo systemctl disable xrdp.service
```

### references
1. install https://blog.csdn.net/flyspace/article/details/102942671
2. permission https://github.com/neutrinolabs/xrdp/issues/1159
3. config https://qiita.com/hisadg/items/cf58d3f4e3ededcffca4
4. https://forum.manjaro.org/t/not-able-to-rdp-from-windows-to-manjaro-vm-via-xrdp-xorg/94357

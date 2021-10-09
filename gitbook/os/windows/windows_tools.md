## windows工具
### scoop 包管理工具
- 安装
1. iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
2. Set-ExecutionPolicy RemoteSigned -scope CurrentUser
3. 安装域名解析问题,修改host：151.101.76.133 raw.githubusercontent.com
   - help:https://www.cnblogs.com/sinferwu/p/12726833.html

- 添加额外包仓库
1. scoop bucket add extras https://github.com/lukesampson/scoop-extras.git

- 安装常用工具:sudo ag git curl 7zip concfg aria2

- 

- 使用
1. scoop install concfg
2. scoop update
3. scoop list
4. scoop -h
5. scoop search

- wiki:https://github.com/lukesampson/scoop/wiki
- help:https://www.jianshu.com/p/f412b95c19b8
- help:https://www.jianshu.com/p/b09fe256be0f

- aria2
# aria2 在 Scoop 中默认开启
scoop config aria2-enabled true
# 关于以下参数的作用，详见aria2的相关资料
scoop config aria2-retry-wait 4
scoop config aria2-split 16
scoop config aria2-max-connection-per-server 16
scoop config aria2-min-split-size 4M

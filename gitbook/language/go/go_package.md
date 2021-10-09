## install base package
### ms sqlserver 
- github:https://github.com/denisenkom/go-mssqldb
- help demo1:https://www.cnblogs.com/songxingzhu/p/5849148.html
- help demo2: https://blog.csdn.net/weixin_42780662/article/details/84551572?depth_1-utm_source=distribute.pc_relevant.none-task&utm_source=distribute.pc_relevant.none-task


## package cannot download
```
http层面增加代理
添加如下环境变量，来解决https fetch failed问题
$ export http_proxy=socks5://127.0.0.1:1080		// 梯子的本地端口
$ export https_proxy=$http_proxy
go get层面增加代理
go 1.11版本新增了 GOPROXY 环境变量，go get会根据这个环境变量来决定去哪里取引入库的代码

$ export GOPROXY=https://goproxy.io
其中，https://goproxy.io 是一个goproxy.io这个开源项目提供的公开代理服务。
```
- url:https://blog.csdn.net/snowin1994/article/details/88358836?depth_1-utm_source=distribute.pc_relevant.none-task&utm_source=distribute.pc_relevant.none-task


## go package
1. go frame go基础开发框架:https://gitee.com/johng/gf/tree/master
2. goproxy 代理:https://gitee.com/snail/proxy
3. hfish 蜜罐:https://gitee.com/lauix/HFish
4. gopub 分布式运维:https://gitee.com/dev-ops/gopub
5. go-fastdfs 分布式下载:https://gitee.com/sjqzhang/go-fastdfs
6. gogs git托管平台:https://gitee.com/Unknown/gogs
7. httprouter http 路由：https://github.com/julienschmidt/httprouter

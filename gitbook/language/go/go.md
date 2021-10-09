# go
## 下载安装包
```
https://golang.google.cn/dl/
```

## 环境搭建
- windows环境搭建
```
https://blog.csdn.net/youshijian99/article/details/81782875
```

## 交叉编译
```
参考1:https://www.cnblogs.com/zsy/p/12008141.html
参考2:https://www.cnblogs.com/shiluoliming/p/9648348.html
```

## 常见问题
- go.mod file not found
```
go env -w GO111MODULE=auto
参考:https://www.jianshu.com/p/7614b7a421a4
```

- 解决goland错误：package ***is not in GOROOT
```
解决步骤：
第一步，在项目的当前目录里，执行命令：go mod init ，会在当前项目目录下自动创建go.mod文件。
第二步，在命令行下，进入当前项目目录，执行命令：go run main.exe，此时会自动下载和关联该项目用到的包。
参考:https://www.cnblogs.com/bluesky0122/p/14208780.html
```

- go get 下载慢
```
set GOPROXY=https://goproxy.cn
set GO111MODULE=on
参考:https://www.cnblogs.com/xuweiqiang/p/12024178.html
```

# gitbook
## docker 安装gitbook
```
docker run -d --name gitbook \
           -p 4001:4000  \
           -v /data/doc/doc/gitbook:/srv/gitbook \
           -v /data/doc/doc/gitbook/_book:/srv/html \
           fellah/gitbook
```
- [参考文档](https://www.jianshu.com/p/190a6e4a7af8)

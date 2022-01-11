# gitbook
## 安装
```
npm install gitbook-cli -g
```

### docker安装
```
 docker run -d --name gitbook \
     -p 4001:4000  \
     -v /data/doc/doc/gitbook:/srv/gitbook \
     -v /data/doc/doc/gitbook/_book:/srv/html \
     fellah/gitbook
```
- [参考文档](https://www.jianshu.com/p/190a6e4a7af8)

## 查看版本号
```
gitbook -V
```

## 创建一本书
```
gitbook init ./doc
```

## 构建
```
gitbook build
```

## 启动服务
```
gitbook serve
```

## 预览书籍
```
192.168.2.127:4000
```

## 安装插件
```
gitbook install
```

## 插件教程
- [GitBook 插件](http://gitbook.zhangjikai.com/plugins.html)
- [插件介绍](https://www.cnblogs.com/mingyue5826/p/10307051.html#2191-alerts-%E8%AD%A6%E6%8A%A5)

### 插件
#### alerts

- 信息样式
> **[info] For info**
>
> Use this for infomation messages.

- 警告造型
> **[warning] For warning**
>
> Use this for warning messages.

- 危险造型
> **[danger] For danger**
>
> Use this for danger messages.

- 成功造型
> **[success] For success**
>
> Use this for success messages.

## 帮助
- [使用gitbook打造你的电子书](https://juejin.im/post/6844903793033740302)
- [gitbook安装报错](https://www.cnblogs.com/cyxroot/p/13754475.html)
- [gitbook教程](https://www.jianshu.com/p/0388d8bb49a7)

## demo
### Chart

{% chart %}
{
    "data": {
        "type": "bar",
            "columns": [
                ["data1", 30, 200, 100, 400, 150, 250],
                ["data2", 50, 20, 10, 40, 15, 25]
            ],
            "axes": {
                "data2": "y2"
            }
    },
        "axis": {
            "y2": {
                "show": true
            }
        }
}
{% endchart %}

### csv
{% includeCsv  src="../assets/csv/demo.csv", useHeader="true" %} {% endincludeCsv %}

### 图片
- ![图片demo](./../assets/img/lua.png)

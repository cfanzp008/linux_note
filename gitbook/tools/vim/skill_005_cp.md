## 快捷键
### <C-r><C-w>
- 将当前单词拷贝到命令行:进入命令行模式,快捷键
```
<C-r><C-w>
```
- 将当前文件名复制到底行命令行
```
<C-r>%
```

- 将当前字符串拷贝到命令行:进入命令行模式,快捷键
```
<C-r><C-a>
```

### normal
- 每行都家一个冒号
```
:%normal A;
```

- 1到5行都添加分号
```
:1,5normal A;
```

- 批量注释lua代码:全中需要注释的代码阿，输入以下命令
```
:`<,`>normal i-- 
```

- 选中部分查找替换
:`<,`>s/uid/a_uid/gc


- 在底行模式不用方向键盘如何查找之前执行的命令
1. C-p 上翻
2. C-n 下翻

### copy,co,t


### 对齐插件tabular
- 等号对齐
```
：Tabularize /=
：Tab /=
```
eg:
before:
```
a = 1
bcd =2
```

after:
```
a   = 1
bcd = 2
```


fdsfdfdfd = 1;// aaaa=1
a = 2;// bbbbbbbbbbbbbbbbb=4343

after:
```
:'<,'>Tab /\/\//r0c1l0
```

fdsfdfdfd = 1;// aaaa=1
        a = 2;// bbbbbbbbbbbbbbbbb=4343

after:
```
:'<,'>Tab /\/\//r0c0l0
```


fdsfdfdfd = 1;//aaaa=1
        a = 2;//bbbbbbbbbbbbbbbbb=4343


fdsfdfdfd = 1; // aaaa              = 1
a         = 2; // bbbbbbbbbbbbbbbbb = 4343



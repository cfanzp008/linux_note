## 《Vim实用技巧（第2版）》学习笔记：技巧23-只要可能，最好用操作符命令，而不是可视命令
- 可视模式可能比Vim的普通模式操作起来更自然一些，但是有一个缺点:.命令有时候会有一些异常的表现。
- vit: visually select inside the tag
- 把括号内的字符都转为大写:
- step1: vi{
- step2: U
- step3: j.
```
   <html>aaaaaaaaaaaaaaaaaaaaa</html>
   <html>bbbbbbbbbbbb</html>
```

- vi{,vi(,vi[ 把括号内的字符都转为大写:
- step1: vi{
- step2: U
```
{Aaaaaaaaaaaaaaaa}
{bbbbbbbbbbbbbbbbbbbb}
(aaaaaaaaaaaaaaa)
[bbbbbbbbbbbbbbbbbbbb]
```
### 使用普通模式下的操作符命令
- gUit,gUi{,gUi[,gUi(


### 总结
- 在做一系列可重复的修改时，最好首选操作符命令，而不是可视模式命令。

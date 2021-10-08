## 《Vim实用技巧（第2版）》技巧6-认识.范式
### 1. 回归三个 .命令编辑任务
- 技巧2:在一系列行的结尾添加分号。[查看技巧2笔记](https://blog.csdn.net/cfanzp/article/details/105734820)

```
A;<Esc>
j.
```

- 技巧3:在每个+号前后各家1个空格。[查看技巧3笔记](https://blog.csdn.net/cfanzp/article/details/105735537)

```
f+
s + 
;.
```

- 技巧5:把每处出现content的地方换成copy。[查看技巧5笔记](https://blog.csdn.net/cfanzp/article/details/105744683)

```
* 
cwcopy
n.
```

### 2. .范式（理想模式）
- 用一次按键移动，另一次按键执行，我们把它叫做“**. 范式**”

### 3. 总结
- 构造“.范式”， 用一次按键移动，另一次按键执行，构造重复动作，累积效率就提高了。

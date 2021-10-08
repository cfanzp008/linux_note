## 《Vim实用技巧（第2版）》学习笔记：技巧27-认识Vim的命令行模式
### 1. 命令行模式
- 命令行模式提示我们输入一条 Ex 命令、一个查找模式或一个表达式。
- 按下: 键时，Vim会切换到命令行模式。
- 按\<Esc\> 退回到普通模式。
- 在命令行模式中执行的命令被称为 Ex 命令。
- 可以用Ex命令读写文件(:edit 和:write)
    - 创建新标签页(:tabnew)
    - 分隔窗口(:split)
    - 操作参数列表(:prev/:next)
    - 操作缓冲器列表(:brev/:bnext)
    - Vim为几乎所有功能都提供了相应的Ex命令(参见:h ex-cmd-index)

### 2. 操作缓冲区文本的Ex命令
命令 | 用途
:-- | :--
:[range]delete [x] | 删除指定范围的行[到寄存器x中]
:[range]yank [x] | 复制指定范围的行[到寄存器x中]
:[line]put [x] | 在指定行后粘贴寄存器x中的内容
:[range]copy {address} | 把指定范围内的行拷贝到{address}指定的行之下
:[range]move {address} | 把指定范围内的行移动到{address}指定的行之下
:[range]join | 连接指定范围内的行
:[range]normal {command} | 对指定范围内的每一行执行普通模式命令{command}
:[range]substitute/{pattern}/{string}/[flags] | 把指定范围内出现{pattern}的地方替换为{string}
:[range]global/{pattern}/[cmd} | 对指定范围内匹配{pattern}的所有行执行Ex命令{cmd}

### 3. Vim命令行模式中的特殊按键
- 有些命令在插入模式和命令行模式可以通用

命令 | 含义
:-- | :--
C-w | 删除到上一个单词
C-u | 删除到行首
C-v | 键入字符
C-k | 键入字符
C-r{register} | 把任意寄存器的内容插入到命令行

### 4. Ex 命令影响范围广且距离远
- Ex 命令拥有能够在多行上同时执行的能力。

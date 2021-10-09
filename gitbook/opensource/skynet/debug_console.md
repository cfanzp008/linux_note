### debug console

命令                 | 作用                           | example
--                   | --                             | --
debug address        | 调试服务                       | debug c
watch(proto,cond)    | 加一个断点                     | watch("lua", function(_,_,cmd) return cmd=="get" end)
c                    | 继续处理这条消息，离开关注状态 | c
n                    | 下一步,不走进函数内部          | n
s                    | 下一步,走进函数内部            | s
cont                 | 退出调试状态                   | cont
debug.traceback(_CO) | 查看调用堆栈                   | -

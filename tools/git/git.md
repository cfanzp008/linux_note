### 配置缩写
- .gitconfig

### git tag
命令                                | 作用
--                                  | --
git tag                             | 查看标签列表
git tag -l "v1.0*"                  | 模糊匹配查询
git tag --list "v0.0*"              | 模糊匹配查询
git tag -a v1.0 -m "my version 1.0" | 添加附注标签
git show v1.0                       | 查看标签相关信息
git tag -lw                         | 创建轻量标签，git show 不会看到额外标签信息
git tag -a v0.9 9fceb02             | 后期打标签
git push origin --tags              | 将标签推送到远端
git tag -d v1.0                     | 删除标签
git push origin --delete <tagname>  | 删除远端标签

### git diff
命令                     | 作用
--                       | --
git diff                 | 查看差异
git diff cached          | 查看工作版本和暂存的差异
git diff HEAD            | 查看工作版本和HEAD的差异
git diff HEAD^ HEAD      | 查看上上个版本和HEAD的差异
git diff --stat          | 查看差异的文件列表
git diff --stat ./client | 查看client目录 差异的文件列表
git diff > patch         | 使用git diff 打补丁
git apply --check patch  | 使用补丁,没有任何输出表示可以顺利接受这个补丁
git apply --reject patch | 使用补丁,冲突会生成.rej文件

### git 回退到某个版本
1. git reset commit-id
2. git push origin branch-name --force


### 远程分支更新
1. git remote update origin --prune

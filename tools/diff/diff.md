## 比较2个目录的差异
1. 比较 etc目录与config目录的差异
- diff -ruNaq etc config

## 显示颜色
1. 安装colordiff
- wget https://www.colordiff.org/colordiff-1.0.19.tar.gz
- make install
2. 使用：diff a.txt b.txt | colordiff

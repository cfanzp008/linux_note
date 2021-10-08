## LeaderF
### 下载
1. github:https://github.com/Yggdroot/LeaderF
### 安装
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

### 使用
1. C-r: FullPath与Regex模式之间切换
2. C-f: FullPath与NameOnly模式之间切换
3. C-c: 退出
4. C-j,C-k: 在结果列表上移动
5. Leaderf! rg 查找文件
6. 修改默认快捷键配置:let g:Lf_ShortcutF = '<C-P>'

### 依赖安装
1. gtags
wget http://mirror.hust.edu.cn/gnu/global/global-6.6.5.tar.gz
tar -xzvf global-6.6.5.tar.gz
./configure
make
sudo make install

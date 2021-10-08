## 帮助文档
1. https://blog.csdn.net/weixin_34279579/article/details/88581554

## 相关配置文件
1. ~/.fetchmailrc
2. ~/.procmailrc
3. ~/.msmtprc
4. ~/.muttrc

### 注意
1. 初学过程中，不要一上来就配置mutt。
2. 最好是先从各个部件开始：收件->过滤邮件->阅读邮件->发件->mutt界面，按照这种顺序。

## 收件: fetchmail
1. 配置~/.fetchmailrc
2. 修改权限 chmod 600 ~/.fetchmailrc
3. fetcmail -vk 查看登录信息

## 邮件过滤: procmail

## mutt
1. 配置
2. 修改权限
3. 下载:ftp://ftp.mutt.org/pub/mutt/mutt-1.14.7.tar.gz
4. help:http://www.linuxfromscratch.org/blfs/view/svn/basicnet/mutt.html

## 相关命令
1. fetchmail 一个下载邮件的应用程序
  - 介绍:https://blog.csdn.net/hjoksky/article/details/6761882?utm_medium=distribute.pc_relevant.none-task-blog-title-1&spm=1001.2101.3001.4242
  - 下载:wget https://master.dl.sourceforge.net/project/fetchmail.berlios/fetchmail-6.3.26.tar.bz2
  - 解压:tar -jxvf fetchmail-6.3.26.tar.bz2
  - 管网:https://www.fetchmail.info/
  - 安装: ./configure,make,make install
2. mutt
3. msmtp
4. procmail

## 安装
   1. 安装列表:mutt fetchmail msmtp procmail

## 一条命令发送邮件
   mutt -s "mutt help" cfanzp@qq.com -a .muttrc < mutt.md

## 配色
- git clone https://github.com/altercation/mutt-colors-solarized.git ~/.mutt/mutt-colors-solarized

## 显示图片
1. 文档:https://www.dazhuanlan.com/2019/08/17/5d576881ed98b/?__cf_chl_jschl_tk__=a0f2f0c996b17114133dd868c1227f092a1b40b9-1600960847-0-AfFcoK0qwi2tAahfkYkLDvZ7fs2AhLQkaSll5AhbNT7MAIO7-hQV491q505oEAQ3IxtbBVkyXORHRWdCIRAKNeiMDp2qARV035SsP9HRR4AX_knbxJa5myAvP44FKVEM13Lt36kyppzS98_FrKBtfZhZIg4hbk7wtAdfnG09L-38ab6zDnyOjfZHg9XCU4VMthQF0mqHRHKACXy0KHo5LGLL71BLqL2y1DhvI3IEzuoJl2Kx9pI-2hfTcr74VRFEZbgVcJAZz2RjvRr_0sIxCdJdAN4gaMSKWZ-M9P5s4cakPhPqJl5fBQCnxeTqq3B7lw
2. 使用fim:http://download.savannah.nongnu.org/releases/fbi-improved/
3. 使用feh,w3m

## metasploit
### 基本概念
1. payloads:攻击载荷
  - 建立目标机与攻击机的稳定连接，
  - 可返回shell,
  - 也可以进行程序注入。

### 基础库文件
1. Rex
2. framework-core
3. framework-base

### 插件
1. Nessus
2. OpenVAS

### 扩展脚本 模块
1. Exploits
2. Aux
3. Post
4. payloads
5. Encoders
6. Nops

### 接口
1. msfconsole
2. msfgui
3. msfcli
4. armitage
5. msfapi

### 功能程序
1. msf****scan
2. msfpayload
3. msfencode
4. msfvenom

### 靶机
1. https://sourceforge.net/projects/metasploitable/


### 安装
1. 数据库配置
-  systemctl start postgresql
-  systemctl enable postgresql
- msfdb init


### 命令
1. services,services -R host
2. creds 列出数据库所有凭据
3. jobs,jobs -K
4. sniffer 密码嗅探

### 信息收集

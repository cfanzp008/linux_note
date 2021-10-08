## frp
### 内网穿透工具
1. github:
https://github.com/fatedier/frp.git
https://github.com/fatedier/frp/releases/

2. help:
https://sunnyrx.com/2016/10/21/simple-to-use-frp/

3. install
```
wget https://github.com/fatedier/frp/releases/download/v0.24.1/frp_0.24.1_linux_amd64.tar.gz
tar -zxvf frp_0.24.1_linux_amd64.tar.gz
cd frp_0.24.1_linux_amd64
rm -f frps
rm -f frps.ini
vi frpc.ini
```

4. config
- 客户端配置服务器端端口和ssh端口


5. start
- server
./frps -c ./frps.ini

- client
./frpc -c ./frpc.ini


6. 后台运行
- server
```
nohup ./frps -c ./frps.ini &

```

- client

```
nohup ./frpc -c ./frpc.ini &
```

7. 安全暴露内网服务
```
https://gofrp.org/docs/examples/stcp/
```
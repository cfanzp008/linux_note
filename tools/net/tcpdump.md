- 1. 查看端口
tcpdump -i ens33  port 7100 -vv


- 常见错误
1. tcpdump: NFLOG link-layer type filtering not implemented
  未指定网卡,使用ifconfig 查看网卡

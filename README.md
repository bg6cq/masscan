masscan docker file

使用：

扫描一个网段的特定端口：
```
docker run -rm bg6cq/masscan -p 80,443 202.38.64.0/24
```

扫描一个机器的所有端口：
```
docker run -rm bg6cq/masscan -p 0-65535 202.38.64.1
```

扫描一个网段的所有端口：
```
docker run -rm bg6cq/masscan -p 0-65535 202.38.64.0/24
```

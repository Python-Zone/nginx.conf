nginx.conf
==========
按照如下步骤配置nginx

#1 开启gzip
在 `/etc/nginx/nginx.conf` 的 `http {...}` 中增加如下代码

```
##
# Gzip Settings
##

gzip on;
gzip_disable "msie6";

gzip_vary on;
gzip_proxied any;
gzip_comp_level 6;
gzip_buffers 16 8k;
gzip_http_version 1.1;
gzip_types text/plain text/css application/json application/x-javascript text/xml application/xml application/xml+rss text/javascript application/javascript application/css;
gzip_min_length 1024;

```

#2 配置网站域名
在 `/etc/nginx/sites-enabled/` 目录下简历对应网站的软链接。命令如下所示：

```
ln -s /path/to/nginx.conf/xxx.conf xxx.conf
```

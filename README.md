# http-mruby-info

Show versions of web server and mruby extension using mruby code.

## Configuration

### Nginx with ngx\_mruby

```nginx
location /info {
  mruby_content_handler /path/to/nginx/conf.d/mruby_info/mruby_info.rb cache;
}
```

```shell
$ curl -s http://localhost/info | jq
{
  "server_name": "NGINX",
  "server_version": "1.11.4",
  "mruby_version": "1.2.0",
  "module_name": "ngx_mruby",
  "module_version": "1.18.3"
}
```

### Apache with mod\_mruby

```apache
<Location /info>
    mrubyHandlerMiddle /path/to/httpd/conf.d/mruby_info/mruby_info.rb cache
</Location>
```

```shell
$ curl -s http://localhost/info | jq
{
  "server_name": "Apache",
  "server_version": "Apache/2.4.7 (Ubuntu)",
  "mruby_version": "1.2.0",
  "module_name": "mod_mruby",
  "module_version": "1.13.11"
}
```

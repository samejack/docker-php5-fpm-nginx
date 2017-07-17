# docker-php5-fpm-nginx

## Overview
This docker image include php5-fpm and nginx based-on Ubuntu Server 14.04 LTS. The configuration of PHP-FPM is forward php from TCP 9000 port which can be get stable high number of connections.

[Docker Cloud](https://hub.docker.com/r/samejack/php5-fpm-nginx/)

## Getting and Start
```
docker pull samejack/php5-fpm-nginx:latest
sudo docker run -v `pwd`/html:/usr/share/nginx/html -p 8080:80 -d samejack/php5-fpm-nginx
```

### Start with supervisor monitor (WebUI)
```
sudo docker run -p 8080:80 -p 9001:9001 -d samejack/php5-fpm-nginx
```

### Start with static fpm process by mamory
```
sudo docker run -e 'RAM=2g' -p 8080:80 -d samejack/php5-fpm-nginx
```

## Building from Source Code (Dockerfile)
```
git clone https://github.com/samejack/docker-php5-fpm-nginx
cd docker-php5-fpm-nginx
sudo docker build -t samejack/php5-fpm-nginx ./
```

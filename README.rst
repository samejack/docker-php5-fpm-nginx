***********************************
docker-php5-fpm-nginx
***********************************

.. image:: https://img.shields.io/badge/license-APACHE-blue.svg
   :target: http://www.apache.org/licenses/LICENSE-2.0

.. image:: https://travis-ci.org/samejack/docker-php5-fpm-nginx.svg?branch=master
   :target: https://travis-ci.org/samejack/docker-php5-fpm-nginx

.. image:: https://img.shields.io/docker/build/samejack/php5-fpm-nginx.svg
   :target: https://hub.docker.com/r/samejack/php5-fpm-nginx/


Overview
-----------------------------------
  
This docker image include php5-fpm and nginx based-on Ubuntu Server 14.04 LTS. The configuration of PHP-FPM is forward php from TCP 9000 port which can be get stable high number of connections.


Getting and Start
-----------------------------------

.. code-block:: bash

   docker pull samejack/php5-fpm-nginx:latest
   sudo docker run -v `pwd`/html:/usr/share/nginx/html -p 8080:80 -d samejack/php5-fpm-nginx

Start with supervisor monitor (WebUI)
=======================================
.. code-block:: bash

   sudo docker run -p 8080:80 -p 9001:9001 -d samejack/php5-fpm-nginx

Start with static fpm process by memory
=======================================
.. code-block:: bash

   sudo docker run -e 'RAM=2g' -p 8080:80 -d samejack/php5-fpm-nginx

Building from Source Code (Dockerfile)
=======================================
.. code-block:: bash

   git clone https://github.com/samejack/docker-php5-fpm-nginx
   cd docker-php5-fpm-nginx
   sudo docker build -t samejack/php5-fpm-nginx ./

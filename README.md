# PHP CI Docker images  

Update IAO2 from https://github.com/geertw/docker-php-ci

This repository contains Docker images for PHP 5.5 and higher which are based on the [official PHP Docker images](https://hub.docker.com/r/_/php/). These images were created specifically to use them for continious integration (Gitlab CI specifically), but they can be used for other purposes too.

These images contain the following additions to the vanilla PHP images:

* Version control packages (git, mercurial -REMOVE, subversion -REMOVE)
* composer
* node.js and npm -REMOVE
* PHP extensions:
  * curl
  * gd
  * gettext
  * intl -REMOVE
  * json
  * mcrypt
  * mbstring
  * mysql (php-5.5 and php-5.6 images only)
  * mysqlnd (php-7.0+ images)
  * opcache
  * pdo_mysql
  * soap
  * xsl
  * zip
  * xdebug

## Pull images

The images are stored on [Docker Hub](https://hub.docker.com/r/iao2/docker-php-ci2/). Use `docker pull iao2/docker-php-ci` to pull these images.

The following tags are available:

* 5.5 -REMOVE
* 5.6
* 7.0
* 7.1

There are also tags without xdebug.

* 5.5-no-xdebug -REMOVE
* 5.6-no-xdebug
* 7.0-no-xdebug
* 7.1-no-xdebug

## Build process

The Dockerfiles are stored in directories for each image version. Docker Hub builds new images automatically when this repository or the PHP base images are updated.

To build these images yourself, use:

```bash
docker build -t php-7.0 php-7.0/
docker build -t php-7.1 php-7.1/
```

etc.

## License

The Dockerfiles are licensed under the MIT license, see LICENSE for details.

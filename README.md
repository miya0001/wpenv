# wpdev

A Docker based testing environment for WordPress.

## Requires

* Docker

## What's installed

* PHP 5.2 - 7.1
* PHPUnit
* MySQL

It doesn't install Apache or Nginx, so it is a testing environment.

## MySQL

* Database: wordpress_tests
  * User: `root`
  * Password: `1111`
* Database: wp_cli_test
  * User: `wp_cli_test`
  * Password: `password1`

## Shared directory

The current directory will be mounted on `/shared` on container.

## Usage

```
run.sh <php-version> [container-name]
```

Or

```
curl -L https://raw.githubusercontent.com/miya0001/wpdev/master/run.sh | bash -s <php-version> [container-name]
```

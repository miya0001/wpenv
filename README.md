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
run.sh <tag> [container-name]
```

Or

```
curl -L https://raw.githubusercontent.com/miya0001/wpdev/master/run.sh | bash -s <tag> [container-name]
```

## The list of available tags

| Tag | PHP Version | PHPUnit Version |
|-----|-------------|-----------------|
| 5.2 | 5.2.17      | 3.6             |
| 5.3 | 5.3.29      | 4.8.36          |
| 5.4 | 5.4.31      | 4.8.36          |
| 5.5 | 5.5.38      | 4.8.36          |
| 5.6 | 5.6.31      | 5.7.21          |
| 7.0 | 7.0.23      | 6.3.0           |
| 7.1 | 7.1.9       | 6.3.0           |

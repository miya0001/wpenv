# wpenv

A Docker based testing environment for WordPress.

## Requires

* Docker 17.06 or later

## Usage

```
curl -L https://raw.githubusercontent.com/miya0001/wpenv/master/run.sh | bash -s <tag> [wp_version] [container-name]
```

See:
* https://github.com/miya0001/wpenv/blob/master/README.md#the-list-of-available-tags
* https://codex.wordpress.org/WordPress_Versions

### How to run phpunit for WordPress plugin

Create a plugin and change directory into the plugin.

```
$ wp scaffold plugin my-plugin
$ cd wp-content/plugins/my-plugin
```

Run a docker in the directory and exec into the container.

```
$ curl -L https://raw.githubusercontent.com/miya0001/wpenv/master/run.sh | bash -s 7.1 4.8
$ docker exec -it wpenv bash
```

Run `phpunit`.

```
$ phpunit
```

### How to run behat for WP-CLI

Change directory into the package commmand directory.

```
$ cd path/to/core-command
```

Run a docker in the directory and exec into the container.

```
$ curl -L https://raw.githubusercontent.com/miya0001/wpenv/master/run.sh | bash -s 7.1
$ docker exec -it wpenv bash
```

Install composer dependencies and run tests.

```
$ composer install
$ vendor/bin/behat
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
| 7.2 | 7.2.0RC1    | 6.3.0           |

See also:
https://github.com/miya0001/docker-phpenv

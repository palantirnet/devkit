# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [2.0.1] - 2020-05-08

### Changed

- Removed Duplicity

## [1.4.1] - 2020-05-08

### Fixed

- Ansible 2.12 compatibility updates
- Serverspec maintenance

### Changed

- Removed Duplicity

## [2.0.0] - 2020-02-12

### Changed

- Updated from Solr 4.5.1 to Solr 7.7.2

## [1.4.0] - 2019-09-25

### Fixed

- Syntax changes for forward compatibility with Ansible 2.9 and 2.11
- Replaced broken local rvm role to use the [rvm.ruby role from Ansible Galaxy](https://galaxy.ansible.com/rvm/ruby)

### Changed

- Updated from PHP 7.2 to 7.3

## [1.3.0] - 2018-07-27

### Changed

- Updated from PHP 7.1 to PHP 7.2
  - PHP config files moved from `/etc/php/7.1/` to `/etc/php/7.2/`
  - PHP 7.2 dropped support for mcrypt

## [1.2.0] - 2018-04-06

### Changed

- Updated from PHP 7.0 to PHP 7.1

This means that the PHP config files moved from `/etc/php/7.0/` to `/etc/php/7.1/`; if your project has provisioning scripts with this path hard-coded, they will need to be updated. [palantirnet/the-vagrant v2.0.1](https://github.com/palantirnet/the-vagrant/releases/tag/2.0.1) has been released to accommodate this change.

## [1.1.1] - 2018-04-05

### Fixed

- Fixed Solr installation
- Updated tests for Solr

### Changed

- Removed Jetty in favor of Solr's bundled HTTP server

If your project's provisioning relies on the `jetty` or `jetty9` service, this is no longer available. Instead, use the `solr` service.

## [1.1.0] - 2017-11-09

### Added

- Software updates:
  - Ubuntu 16.04.3
  - PHP 7
  - Jetty 9
  - NodeJS 5

### Known Issues

The Jetty9 service doesn't run.

## [0.2.4] - 2017-01-05

### Added

- Added the PECL YAML PHP extension to match [Acquia Cloud release 1.96](https://docs.acquia.com/release-note/acquia-cloud-196), which [caused some problems](https://docs.acquia.com/article/pecl-yaml-serialization-errors)

### Fixed

- Downgraded Solr from 4.9.1 to 4.5.1 in order to match Acquia Search
- Fixed serverspec tests for PHP extensions

## [0.2.3] - 2016-11-17

### Fixed

- Added missing PHP modules that were part of the previous `php-common` package:
  - `php5.6-bcmath`
  - `php5.6-bz2`
  - `php5.6-dba`
  - `php5.6-soap`
  - `php5.6-xml`
  - `php5.6-zip`

## [0.2.2] - 2016-11-14

### Fixed

- Added missing PHP 5.6 mbstring extension

## [0.2.1] - 2016-11-14

### Fixed

- Updated PHP 5.6 PPA source and packages

## [0.2.0] - 2016-09-07

### Added

- PHP XDebug

### Fixed

- Fixed incorrect database privileges for drupal user

### Removed

- Drupal Console
- Drush

## [0.1.1] - 2016-08-11

### Added

- Added PHP Memcached extension
- Allowed remote Mysql connections for 'drupal' user

### Fixed

- Fixes issue with Solr and search_api_solr cores

## [0.1.0] - 2016-08-09

### Added

- Memcached role
- Mailhog role
- Jetty role
- Solr role

### Fixed

- Fixed Firefox from being removed during minimize.sh

----
Copyright 2016, 2017, 2018 Palantir.net, Inc.

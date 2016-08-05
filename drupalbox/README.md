
# DrupalBox

## Defaults

### MySQL

|              | Value     |
|--------------|-----------|
| __Hostname__ | 127.0.0.1 |
| __Username__ | drupal    |
| __Password__ | drupal    |
| __Database__ | drupal    |

### Mailhog

Mailhog's smtp service listens on port 1025 and http service listens on port 8025

### Solr

Solr is installed but disabled by default. It's installed to `/usr/share/solr/current`.

In order to use it, you must install a Solr "core" to `/usr/share/solr/current/core/` and update the `/usr/share/solr/current/solr.xml` file with the new core. You must enable/start Jetty.

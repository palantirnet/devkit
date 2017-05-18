
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

Mailhog's smtp service listens on port 1025, and its http service listens on port 8025; you can find the web UI at `http://yoursite.local:8025`

### Solr

Solr is installed to `/usr/share/solr/current` with two default cores, `drupal7` and `drupal8`. Solr runs on port 8983, and the web UI can be found at `http://yoursite.local:8983/solr`.

In order to use it, you need to start Jetty, which can be managed with [palantirnet/the-vagrant](https://github.com/palantirnet/the-vagrant) in the `Vagrantfile`.

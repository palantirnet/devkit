
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

Mailhog's smtp service listens on port `1025`, and its http service listens on port `8025`; you can find the web UI at `http://yoursite.local:8025`

### Solr

This box runs Solr v4.5.1, to match one of the versions available on [Acquia](https://docs.acquia.com/article/how-test-custom-solr-schema-file-locally).

Solr is installed to `/opt/solr` with two default cores, `drupal7` and `drupal8`. Solr runs on port `8983`, and the web UI can be found at `http://yoursite.local:8983/solr`.

The Solr service runs by default; when you're using [palantirnet/the-vagrant](https://github.com/palantirnet/the-vagrant), this can be managed in the `Vagrantfile`.

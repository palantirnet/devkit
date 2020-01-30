
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

This box runs Solr v7.7, to match one of the versions available on [Acquia](https://docs.acquia.com/acquia-search/modules/move-to-solr7/). Note that there is no Solr 7 support for Drupal 7 at this time.

Solr is installed to `/opt/solr` with one default core, `drupal8`. Solr runs on port `8983`, and the web UI can be found at `http://yoursite.local:8983/solr`.

The Solr service runs by default; when you're using [palantirnet/the-vagrant](https://github.com/palantirnet/the-vagrant), this can be managed in the `Vagrantfile`.

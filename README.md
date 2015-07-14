# Prometheus Docker image

This [Prometheus](http://prometheus.io/) image is preconfigured to load
it's config from `/etc/prometheus/config.yml` which in turn will load
target groups from `/etc/prometheus/targets.d`.

You will need to mount your configuration files appropriately to have a
useful server.

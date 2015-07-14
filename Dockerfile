FROM centos:7

MAINTAINER Jimmi Dyson <jimmidyson@gmail.com>

ENTRYPOINT ["/opt/prometheus/prometheus"]
CMD [ "-config.file", "/etc/prometheus/config.yml", "-storage.local.path", "/var/prometheus"]

EXPOSE 9090

RUN mkdir -p /opt/prometheus /etc/prometheus/config.d /var/prometheus && \
    chmod 777 /var/prometheus && \
    curl -L https://github.com/prometheus/prometheus/releases/download/0.15.0rc1/prometheus-0.15.0rc1.linux-amd64.tar.gz | tar xzv -C /opt/prometheus

VOLUME /var/prometheus/

COPY config.yml /etc/prometheus/config.yml

USER nobody


FROM marshall:build AS release

LABEL maintainer="Matthew Baggett <matthew@baggett.me>" \
      org.label-schema.vcs-url="https://github.com/benzine-framework/docker-perl" \
      org.opencontainers.image.source="https://github.com/benzine-framework/docker-perl"

RUN apt-get -qq update && \
    apt-get -yqq install perl && \
    apt-get -yqq autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/lib/dpkg/status.old /var/cache/debconf/templates.dat /var/log/dpkg.log /var/log/lastlog /var/log/apt/*.log && \
    perl -v

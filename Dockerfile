#--------------------------------------
# Image: base
#--------------------------------------
FROM ubuntu:20.04@sha256:adbc8b8e1a56d35c0789b1e6cbac809efa213802f67a26d0b78fc14eade7d1dd

ARG APT_HTTP_PROXY

# Weekly cache buster
ARG CACHE_WEEK

#  autoloading buildpack env
ENV BASH_ENV=/usr/local/etc/env ENV=/usr/local/etc/env PATH=/home/user/bin:$PATH
SHELL ["/bin/bash" , "-c"]

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["bash"]

COPY src/ /

RUN install-buildpack

# renovate: datasource=github-tags lookupName=git/git
RUN install-tool git v2.36.1

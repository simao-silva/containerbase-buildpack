#--------------------------------------
# Image: base
#--------------------------------------
FROM ubuntu:22.04@sha256:a9038002b9b29c77c93b1c562ca2bee51313c6f5208c8d90b91929db62e96930

ARG APT_HTTP_PROXY

# Weekly cache buster
ARG CACHE_WEEK

#  autoloading buildpack env
ENV BASH_ENV=/usr/local/etc/env ENV=/usr/local/etc/env PATH=/home/user/bin:$PATH
SHELL ["/bin/bash" , "-c"]

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["bash"]

COPY src/ /

RUN install-containerbase

# renovate: datasource=github-tags lookupName=git/git
RUN install-tool git v2.42.0

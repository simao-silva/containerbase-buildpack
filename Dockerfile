#--------------------------------------
# Image: base
#--------------------------------------
FROM ubuntu:22.04@sha256:90f3997e3e5f82097fa3046152944772876ac338365954f693b9e1bd3dd3c280

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
RUN install-tool git v2.43.0

#--------------------------------------
# Image: base
#--------------------------------------
FROM ubuntu:22.04@sha256:e6173d4dc55e76b87c4af8db8821b1feae4146dd47341e4d431118c7dd060a74

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

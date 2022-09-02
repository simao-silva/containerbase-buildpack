#--------------------------------------
# Image: base
#--------------------------------------
FROM ubuntu:20.04@sha256:514c495036e344710402a1de098e2b81aee8727210d11c36e36aa4e44ec157d8

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
RUN install-tool git v2.37.3

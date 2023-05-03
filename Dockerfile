#--------------------------------------
# Image: base
#--------------------------------------
FROM ubuntu:22.04@sha256:b24c5a75097671e95e6ddb19f9640d61e6a45adbcef7dd5e9b9f86d703325410

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
RUN install-tool git v2.40.1

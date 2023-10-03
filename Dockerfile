#--------------------------------------
# Image: base
#--------------------------------------
FROM ubuntu:22.04@sha256:c1a4fb1fd1697920c2a422a355783a9debaf57b8eb6c92de84a75ce5be34c6cb

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

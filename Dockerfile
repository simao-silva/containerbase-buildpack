#--------------------------------------
# Image: base
#--------------------------------------
FROM ubuntu:22.04@sha256:9a0bdde4188b896a372804be2384015e90e3f84906b750c1a53539b585fbbe7f

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
RUN install-tool git v2.39.1

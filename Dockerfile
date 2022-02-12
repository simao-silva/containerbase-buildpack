#--------------------------------------
# Image: base
#--------------------------------------
FROM ubuntu:20.04@sha256:7c9c7fed23def3653a0da5bc9ecb651efe155ebd5802c7ba5d585edaa6c89496

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
RUN install-tool git v2.35.1

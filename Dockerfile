#--------------------------------------
# Image: base
#--------------------------------------
FROM ubuntu:20.04@sha256:e81eb151de587f6b02ab9daea410a819382bdeb27b7a01342f7167d606635078

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
RUN install-tool git v2.38.0

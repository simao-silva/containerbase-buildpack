#--------------------------------------
# Image: base
#--------------------------------------
FROM ubuntu:22.04@sha256:d0bca7e423d7eb1f8a334762ca173164b4f8cac656b0ca3ce7f7d198fdb28143

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
RUN install-tool git v2.36.0

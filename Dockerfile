#--------------------------------------
# Image: base
#--------------------------------------
FROM ubuntu:20.04@sha256:9d42d0e3e57bc067d10a75ee33bdd1a5298e95e5fc3c5d1fce98b455cb879249

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

#--------------------------------------
# Image: base
#--------------------------------------
FROM ubuntu:22.04@sha256:854037bf6521e9c321c101c269272f756e481fb5f167ae032cb53da08aebcd5a

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
RUN install-tool git v2.39.2

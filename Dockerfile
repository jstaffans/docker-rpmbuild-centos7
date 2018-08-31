FROM jc21/rpmbuild-centos7:latest

MAINTAINER Jamie Curnow <jc@jc21.com>
LABEL maintainer="Jamie Curnow <jc@jc21.com>"

USER root

# Rust
RUN yum -y install cmake cargo rust \
    && yum clean all \
    && rm -rf /var/cache/yum

USER rpmbuilder


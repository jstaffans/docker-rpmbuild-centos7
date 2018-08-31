FROM jc21/rpmbuild-centos7:latest

MAINTAINER Jamie Curnow <jc@jc21.com>
LABEL maintainer="Jamie Curnow <jc@jc21.com>"

USER root

# Devtools7
RUN yum -y install centos-release-scl \
    && yum-config-manager --enable rhel-server-rhscl-7-rpms \
    && yum install devtoolset-7 \
    && yum clean all \
    && rm -rf /var/cache/yum

ADD etc/profile.d/enablecpp.sh /etc/profile.d/enablecpp.sh

USER rpmbuilder


FROM jc21/rpmbuild-centos7:latest

MAINTAINER Jamie Curnow <jc@jc21.com>
LABEL maintainer="Jamie Curnow <jc@jc21.com>"

USER root

# Golang
RUN rpm --import https://mirror.go-repo.io/centos/RPM-GPG-KEY-GO-REPO \
  && wget https://mirror.go-repo.io/centos/go-repo.repo -O /etc/yum.repos.d/go-repo.repo \
  && yum -y install golang \
  && yum clean all \
  && rm -rf /var/cache/yum

USER rpmbuilder


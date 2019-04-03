FROM jc21/rpmbuild-centos7:latest

MAINTAINER Jamie Curnow <jc@jc21.com>
LABEL maintainer="Jamie Curnow <jc@jc21.com>"

USER root

RUN yum -y install ruby-devel gcc make rpm-build rubygems
RUN gem install --no-ri --no-rdoc fpm

USER rpmbuilder


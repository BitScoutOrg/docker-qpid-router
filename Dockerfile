FROM centos:centos7
MAINTAINER The BitScout Community <community@TBA>

RUN  yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
     yum install -y qpid-dispatch-router && \
     yum clean all

ADD . /.qrouterd

WORKDIR /.qrouterd

EXPOSE 5672

CMD /usr/sbin/qdrouterd

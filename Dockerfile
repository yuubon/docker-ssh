FROM centos
MAINTAINER htanaka "hiroharu8864@gol.com"

RUN yum install -y passwd
RUN yum install -y openssh
RUN yum install -y openssh-server
RUN yum install -y sudo
RUN yum install -y vim

RUN echo "root:root" | chpasswd

## setup sshd_config
ADD ./sshd_config /etc/ssh/sshd_config
RUN /etc/init.d/sshd start
RUN /etc/init.d/sshd stop

CMD /usr/sbin/sshd -D
EXPOSE 22

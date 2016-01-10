FROM ashrithr/hadoop-base

MAINTAINER ashrithr

USER root

ADD bootstrap.sh /etc/bootstrap.sh
ADD files /

RUN \
    mkdir /var/log/hadoop && \
    chown root:root /etc/bootstrap.sh && \
    chmod 700 /etc/bootstrap.sh

# HDFS master ports
EXPOSE 50070 8020 50090
# MapReduce ports
EXPOSE 19888 10020
# YARN ports
EXPOSE 8032 8030 8031 8033 8088
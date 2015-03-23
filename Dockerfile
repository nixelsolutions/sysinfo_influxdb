FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get -y install wget

# sysinfo_influxdb
RUN wget https://github.com/novaquark/sysinfo_influxdb/releases/download/0.5.3/sysinfo_influxdb && \
    chmod +x sysinfo_influxdb

# Environment variables
ENV INFLUXDB_HOST **ChangeMe**
ENV INFLUXDB_PORT 8086
ENV INFLUXDB_NAME **ChangeMe**
ENV INFLUXDB_USER root
ENV INFLUXDB_PASS root

ADD run.sh /run.sh
RUN chmod +x /*.sh

CMD ["/run.sh"]

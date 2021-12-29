FROM openjdk:8
RUN cd /opt && curl -OL https://archive.apache.org/dist/kafka/2.5.0/kafka_2.12-2.5.0.tgz && tar -zxvf kafka_2.12-2.5.0.tgz
WORKDIR /opt
COPY start.sh /opt/kafka_2.12-2.5.0
CMD ["./start.sh"]
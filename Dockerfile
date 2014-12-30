### http://39digits.com/create-a-minecraft-server-on-digitalocean/

FROM ubuntu:trusty

ENV APT_GET_UPDATE 2014-10-14
RUN apt-get update
RUN apt-get install -y openjdk-7-jre-headless
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

RUN apt-get install -y wget unzip \
	&& apt-get clean

ADD start-tekkit.sh /start-tekkit.sh
RUN chmod +x /start-tekkit.sh

RUN mkdir /data
VOLUME ["/data"]
WORKDIR /data

CMD [ "/start-tekkit.sh" ]

EXPOSE 25565

ENV MOTD A Tekkit Server Powered by Docker
ENV LEVEL world
ENV JVM_OPTS -Xmx1024M -Xms1024M
ENV VERSION LATEST

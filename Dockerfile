### http://39digits.com/create-a-minecraft-server-on-digitalocean/

FROM itzg/ubuntu-openjdk-7

RUN apt-get install -y wget \
	libmozjs-24-bin \
	imagemagick \
	unzip \
	&& apt-get clean
RUN update-alternatives --install /usr/bin/js js /usr/bin/js24 100

RUN wget -O /usr/bin/jsawk https://github.com/micha/jsawk/raw/master/jsawk
RUN chmod +x /usr/bin/jsawk

ADD start-tekkit.sh /start-tekkit.sh
RUN mkdir /data \
	&& chmod go+rX /start-tekkit.sh

VOLUME ["/data"]
WORKDIR /data

CMD [ "/start-tekkit.sh" ]

EXPOSE 25565

ENV MOTD A Tekkit Server Powered by Docker
ENV LEVEL world
ENV JVM_OPTS -Xmx1024M -Xms1024M
ENV VERSION LATEST

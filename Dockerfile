FROM buildpack-deps:jessie-curl
MAINTAINER samherrmann.github@gmail.com

RUN mkdir /opt/noms
WORKDIR /opt/noms

RUN apt-get update && apt-get install -y --no-install-recommends \
    less \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://s3-us-west-2.amazonaws.com/downloadstable.noms.io/jobs/NomsBuildGoBinaries-v7/4/noms-HEAD-linux-amd64.tar.gz \
    && tar -xzf *.tar.gz \
    && rm *.tar.gz \
	&& ln -s /opt/noms/noms /usr/bin/noms

VOLUME /data
EXPOSE 8000

CMD ["noms", "serve", "/data"]

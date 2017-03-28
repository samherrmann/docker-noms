FROM buildpack-deps:jessie-curl
MAINTAINER samherrmann.github@gmail.com

RUN mkdir /opt/noms
WORKDIR /opt/noms

RUN wget https://s3-us-west-2.amazonaws.com/downloadstable.noms.io/jobs/NomsBuildGoBinaries-v7/4/noms-HEAD-linux-amd64.tar.gz \
    && tar -xzf *.tar.gz \
    && rm *.tar.gz

VOLUME /data
EXPOSE 8000

CMD ["./noms", "serve", "/data"]
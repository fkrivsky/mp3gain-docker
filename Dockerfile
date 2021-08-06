ARG ARCH
ARG BASE=hirsute
FROM ubuntu:$BASE

LABEL mantainer="Filip Krivsky <krivsky.filip@protonmail.com>" \
    org.opencontainers.image.authors="Filip Krivsky <krivsky.filip@protonmail.com>" \
    org.opencontainers.image.created=$BUILD_DATE \
    org.opencontainers.image.title="mp3gain" \
    org.opencontainers.image.description="mp3gain image with parallel." \
    org.opencontainers.image.url="https://hub.docker.com/r/fkrivsky/mp3gain" \
    org.opencontainers.image.source="https://github.com/fkrivsky/mp3gain-docker" \
    org.label-schema.docker.cmd="docker run -it --rm --name=mp3gain -e PARAMETERS=\"-a -k\" -e PARALLEL=1 -v <path/to/mp3/directory>:/data fkrivsky/mp3gain" \
    org.label-schema.docker.params="PARALLEL=integer number of parallel threads to use (default 1)" \
    org.label-schema.docker.params="PARAMETERS=string of parameters for mp3gain - see https://www.mankier.com/1/mp3gain" \
    org.label-schema.schema-version="1.0"

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y mp3gain parallel && \
    apt-get autoremove -y && \
    apt-get clean -y

VOLUME ["/data"]

COPY run.sh /

ENV PARAMETERS="-a -k"
ENV PARALLEL=1

CMD ["/bin/bash", "/run.sh"]

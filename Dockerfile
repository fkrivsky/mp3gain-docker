ARG ARCH
FROM ubuntu:jammy

LABEL mantainer="Filip Krivsky <krivsky.filip@protonmail.com>" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="mp3gain" \
    org.label-schema.description="Simple mp3gain image" \
    org.label-schema.url="https://github.com/fkrivsky/mp3gain-docker" \
    org.label-schema.schema-version="1.0"

ENV parameters="-a -k"

RUN apt-get update && \
    apt-get install -y mp3gain && \
    apt-get autoremove -y && \
    apt-get clean -y

VOLUME ["/data"]

COPY run.sh /

CMD ["/bin/bash", "/run.sh"]
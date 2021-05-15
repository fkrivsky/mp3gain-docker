FROM ubuntu:hirsute

RUN apt update && \
apt-get install -y mp3gain && \
apt-get autoremove -y && \
apt-get clean -y

VOLUME ["/data"]

COPY run.sh /

CMD ["/bin/bash", "/run.sh"]
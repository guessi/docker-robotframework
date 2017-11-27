FROM python:2.7-slim-jessie

RUN apt update                                                             && \
    apt install -y                                                            \
        curl                                                                  \
        gcc                                                                   \
        libcurl4-gnutls-dev                                                   \
        libgnutls28-dev                                                       \
        libssl-dev

ADD requirements.txt /opt/requirements.txt
RUN pip install requests                                                   && \
    pip install -r /opt/requirements.txt

RUN mkdir -p /robot-scripts

VOLUME ["/robot-scripts"]

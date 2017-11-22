FROM ubuntu:14.04

RUN apt update                                                             && \
    apt install -y python-setuptools                                       && \
    easy_install -U pip==9.0.1                                             && \
    apt install -y                                                            \
        libcurl4-gnutls-dev                                                   \
        libffi-dev                                                            \
        libssl-dev                                                            \
        python-dev                                                            \
        python-lazr.restfulclient                                             \
        python-pam                                                            \
        python-gi                                                             \
        python-wxgtk2.8

ADD requirements.txt /opt/requirements.txt

# workaround for python-requests
RUN R_VERSION=$(awk -F '=' '/^requests/{print$3}' /opt/requirements.txt)   && \
    pip install requests==${R_VERSION}                                     && \
    pip install -r /opt/requirements.txt

RUN mkdir -p /robot-scripts

VOLUME ["/robot-scripts"]

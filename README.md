# Dockerized Robotframework Automation Test

[![Docker Stars](https://img.shields.io/docker/stars/guessi/docker-robotframework.svg)](https://hub.docker.com/r/guessi/docker-robotframework/)
[![Docker Pulls](https://img.shields.io/docker/pulls/guessi/docker-robotframework.svg)](https://hub.docker.com/r/guessi/docker-robotframework/)
[![Docker Automated](https://img.shields.io/docker/automated/guessi/docker-robotframework.svg)](https://hub.docker.com/r/guessi/docker-robotframework/)


## Integrated Items

* Robotframework
* PhantomJS
* Selenium
* AWS CLI


### Usage

run robotframework-cli with customized scripts inside Docker

    $ docker run --rm                                  \
        -v $(pwd)/path/to/robot-scripts:/robot-scripts \
        -it guessi/docker-robotframework               \
          robot -i mytag /robot-scripts

execute phantomjs with customized scripts inside Docker

    $ docker run --rm                                  \
        -v $(pwd)/path/to/robot-scripts:/robot-scripts \
        -it guessi/docker-robotframework               \
          phantomjs

execute awscli command inside Docker

    $ docker run --rm                                  \
        -v $(pwd)/path/to/robot-scripts:/robot-scripts \
        -it guessi/docker-robotframework               \
          aws --help


### Documentation

* [Robot Framework](http://robotframework.org/#documentation)
* [Selenium](http://www.seleniumhq.org/)
* [PhantomJS](http://phantomjs.org/)

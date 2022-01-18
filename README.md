# Dockerized Robotframework Automation Test


## Integrated Items

* Robotframework
* PhantomJS
* Selenium
* AWS CLI


### Usage

run robotframework-cli with customized scripts inside Docker

    $ docker run --rm --privileged                     \
        -v $(pwd)/workdir:/workdir:rw                  \
        -it guessi/docker-robotframework               \
          robot -i mytag /workdir

execute phantomjs with customized scripts inside Docker

    $ docker run --rm --privileged                     \
        -v $(pwd)/workdir:/workdir:rw                  \
        -v $(pwd)/tests:/phantomjs:ro                  \
        -it guessi/docker-robotframework               \
          phantomjs                                    \
            /phantomjs/phantomjs-languages.js

execute awscli command inside Docker

    $ docker run --rm --privileged                     \
        -it guessi/docker-robotframework               \
          aws --help


### Documentation

* [Robot Framework](http://robotframework.org/#documentation)
* [Selenium](http://www.seleniumhq.org/)
* [PhantomJS](http://phantomjs.org/)


### Reference

* [Screenshot of Multilingual Support](https://imgur.com/a/MrSla)


### Known Issues

* [Maldivian Language](https://en.wikipedia.org/wiki/Maldivian_language) may not be displayed correctly

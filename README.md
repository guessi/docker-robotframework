# Dockerized Robotframework Automation Test

### Test with Docker

build docker image

    $ docker build -t robotfw .

run robotframework-cli via Docker

    $ docker run --rm                                  \
        -v $(pwd)/path/to/robot-scripts:/robot-scripts \
        -it robotfw                                    \
          robot --help

run robotframework-cli with customized robot scripts inside Docker

    $ docker run --rm                                  \
        -v $(pwd)/path/to/robot-scripts:/robot-scripts \
        -it robotfw                                    \
          robot /robot-scripts

to execute AWS related command

    $ docker run --rm                                  \
        -e AWS_REGION=xxxxx                            \
        -e AWS_ACCESS_KEY_ID=xxxxxx                    \
        -e AWS_SECRET_ACCESS_KEY=xxxxx                 \
        -v $(pwd)/path/to/robot-scripts:/robot-scripts \
        -it robotfw                                    \
          aws help


### Documentation

    * [Robot Framework](http://robotframework.org/#documentation)
    * [Selenium](http://www.seleniumhq.org/)

FROM docker:dind

LABEL author=qkssk1711@163.com

RUN wget https://get.daocloud.io/docker/compose/releases/download/v2.4.1/docker-compose-`uname -s`-`uname -m` -O /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose \
    && docker-compose -v

ENTRYPOINT ['docker']

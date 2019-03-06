FROM arm32v6/alpine:3.7

MAINTAINER William Molina <wmolina98@gmail.com>

RUN apk update \
 && apk add ca-certificates wget unzip \
 && update-ca-certificates

RUN wget https://github.com/happy-bubbles/presence/releases/download/1.8.3/presence_linux_arm.zip

RUN unzip presence_linux_arm.zip

EXPOSE 5555

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]



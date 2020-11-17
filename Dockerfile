FROM alpine:3

LABEL maintainer="nikita.e.zhelezkov@gmail.com"

ENV SSH_PRIVATE_KEY ""

RUN apk add --no-cache openssh-client
RUN mkdir -p ~/.ssh
COPY ./ssh_config /etc/ssh/ssh_config

COPY entrypoint.sh /
RUN chmod a+x /entrypoint.sh 

ENTRYPOINT ["/entrypoint.sh"]
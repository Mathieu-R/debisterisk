FROM alpine:latest

RUN \
  apk add --update \
  asterisk \
  asterisk-speex  \
  asterisk-sample-config \
  && rm -rf /var/cache/apk/*

CMD '/usr/sbin/asterisk'

EXPOSE 5060

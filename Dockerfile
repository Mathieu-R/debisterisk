FROM alpine:latest

RUN \
  apk add --update \
  asterisk \
  asterisk-speex  \
  asterisk-sample-config \
  && rm -rf /var/cache/apk/*

CMD '/etc/init.d/asterisk start'

EXPOSE 5060

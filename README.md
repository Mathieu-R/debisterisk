# debisterisk
Image for asterisk built on top of debian 8.

Example of `docker-compose.yml` :

You can easily erase default asterisk configuration files by mounting volumes.

```yml
...
voip:
  image: matiuso/debisterisk:latest
  ports:
    - 5060:5060
    - 5060:5060/tcp
    - 9080:9080
    - 16384-16394:16384-16394/udp
  volumes:
    - ./voip/etc/asterisk/modif/extensions.conf:/etc/asterisk/extensions.conf
    - ./voip/etc/asterisk/modif/sip.conf:/etc/asterisk/sip.conf
    - ./voip/etc/asterisk/modif/users.conf:/etc/asterisk/users.conf
    - ./voip/etc/asterisk/modif/voicemail.conf:/etc/asterisk/voicemail.conf
...
```

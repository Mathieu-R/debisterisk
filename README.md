# alpisterisk
Lightweigth image for asterisk built on top of Alpine.

Example of `docker-compose.yml` :

You can easily erase default asterisk configuration files by mounting volumes.

```yml
...
voip:
  image: matiuso/alpisterisk:latest
  ports:
    - 5060:5060
  volumes:
    - ./voip/etc/asterisk/:/etc/asterisk
...
```

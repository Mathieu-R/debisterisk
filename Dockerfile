FROM debian:8

RUN apt update && apt upgrade -y 
RUN apt install -y \
  build-essential \
  openssl \
  libxml2-dev \
  libncurses5-dev \
  uuid-dev \
  sqlite3 \
  libsqlite3-dev \
  pkg-config \
  
WORKDIR /usr/local/src/

RUN wget https://downloads.asterisk.org/pub/telephony/asterisk/asterisk-14.4.0.tar.gz
RUN tar -xzf asterisk-14.4.0.tar.gz
WORKDIR asterisk-14.4.0/

RUN ./configure
RUN make
RUN make install 
RUN make samples

CMD '/usr/sbin/asterisk'

EXPOSE 5060/udp
EXPOSE 5060/tcp
EXPOSE 9080
EXPOSE 16384/udp
EXPOSE 16385/udp
EXPOSE 16386/udp
EXPOSE 16387/udp
EXPOSE 16388/udp
EXPOSE 16389/udp
EXPOSE 16390/udp
EXPOSE 16391/udp
EXPOSE 16392/udp
EXPOSE 16393/udp
EXPOSE 16394/udp

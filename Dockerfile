FROM phusion/baseimage
MAINTAINER  Sylvain Lasnier <sylvain.lasnier@gmail.com>

# Install packages
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install memcached

# memcached public variable 
ENV MAX_MEM 64
ENV BIND 0.0.0.0
ENV MAX_CONN 1024

EXPOSE 11211

CMD ["/usr/bin/memcached", "-u", "root", "-v", "-m", "$MAX_MEM", "-l", "$BIND", "-c", "$MAX_CONN"]

FROM sylvainlasnier/ubuntu
MAINTAINER  Sylvain Lasnier <sylvain.lasnier@gmail.com>

# Install packages
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y -q install memcached


# Memcached max memony size
ENV MAX_MEMORY 64

EXPOSE 11211

# supervisor to rule them all
CMD ["/usr/bin/supervisord","-n"]

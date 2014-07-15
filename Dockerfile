FROM sylvainlasnier/ubuntu
MAINTAINER  Sylvain Lasnier <sylvain.lasnier@gmail.com>

# Install packages
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y -q install memcached


# user root:root
RUN echo root:root | chpasswd

EXPOSE 11211
USER daemon

CMD    ["memcached","-m","64"]

FROM sylvainlasnier/ubuntu
MAINTAINER  Sylvain Lasnier <sylvain.lasnier@gmail.com>

# Install packages
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install memcached

# memcached public variable 
ENV MAX_MEMORY 64
ENV BIND_IP 0.0.0.0

EXPOSE 11211

CMD /usr/bin/memcached -u root -m $MAX_MEMORY -l $BIND_IP

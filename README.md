Memcached 1.4.14 Docker image
=============================

Description
-----------

This is a Memcached 1.4.14 docker images based on Ubuntu 14.10. It is small and basic.

Its features is to delivered memcached service.  
You will be able to choose the memcache size, by default 64Mo, the max connection number, by default 1024 and the bind address ip, by default 0.0.0.0.  
Its display WARNING and ERROR verbose on stdout. Useful for external monitoring.

So, this image respects pragmatic simple vision of Docker.  
If you are looking for a complete VM, just use LXC.  
**LXC** is an amazing product to get fast **full VM** where **Docker** is amazing to get only **one service by VM**.


Usage
-----

Simple use of memcached docker image:

	$ docker run --name memcached -d -p 11211 sylvainlasnier/memcached
	125c0fc6da85cbc6141f43539565b3b743db169da05e297b821b0c29f17d2638
	$ docker ps
	CONTAINER ID        IMAGE                             COMMAND                CREATED             STATUS              PORTS                      NAMES
	125c0fc6da85        sylvainlasnier/memcached:latest   /bin/sh -c /usr/bin/   14 minutes ago      Up 14 minutes       0.0.0.0:49183->11211/tcp   memcached 
	
Test it:

	$ nc 127.0.0.1 49183
	stats
	STAT uptime 2627
	STAT time 1405695366
	STAT version 1.4.14 (Ubuntu)
	STAT libevent 2.0.21-stable
	...
	STAT reclaimed 0
	END


Advanced usage:

You can change:

* the max connection to memcached with MAX_CONN variable. Default value is 1024.
* the max memory size with MAX_MEM variable in Mo. Default value is 64.
* and the bind ip with BIND variable. Default value is 0.0.0.0

For example :

	$ docker run  --rm -ti -e MAX_MEM=1024,MAX_CONN=10000 sylvainlasnier/memcached

launch memcached docker with 1Go RAM and usable by 10000 simultaneous clients

Last but not least, you can build your own awesome VM based on this image. 


I use these docker images in production and I assume update.
Have fun and try my other [docker images](https://hub.docker.com/u/sylvainlasnier/) ^^


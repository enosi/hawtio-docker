# [hawtio](https://hawt.io/) for [docker](https://docker.com/)

We struggled to find an easy [docker](https://docker.com/) container for
[hawtio](https://hawt.io/) so we built this one.

## Where to find the container

Hosted on [dockerhub](https://hub.docker.com/) at:

> [cloud.docker.com/u/enosi/repository/docker/enosi/hawtio-docker/general](https://cloud.docker.com/u/enosi/repository/docker/enosi/hawtio-docker/general)

## Want another version?

By default, `hawtio-docker` currently builds with a default release version of
v[2.7.0](https://github.com/hawtio/hawtio/tree/hawtio-2.7.0).

Want a different version of [hawtio](https://github.com/hawtio/hawtio/releases)?
Then you're in luck thanks to the use of a docker `build-arg`.

```sh
docker build --build-arg version=2.6.0 -t hawtio-2.6.0 .
```

This will give you a container running v[2.6.0](https://github.com/hawtio/hawtio/tree/hawtio-2.6.0).

## To use hawtio docker

```sh
docker run --rm -p 8081:8080 enosi/hawtio-docker:latest
```

Then you will be able to head along to:

> [lvh.me:8081/hawtio](http://lvh.me:8081/hawtio/)

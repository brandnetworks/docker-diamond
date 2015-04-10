# Diamond Docker

Docker image for collecting host metrics using [Diamond](https://github.com/python-diamond/Diamond).

There are multiple Dockerfiles included in this repo, each used for a separate step in the build:

 - Dockerfile.deps: Used to build `rtux/debian-diamond`, which includes dependencies required for both buildtime and runtime
 - Dockerfile: Buildtime image, used to build a .deb package of diamond
 - Dockerfile.run: The runtime image for Diamond


This design has two major goals:

- Reduce the size of the final runtime image, by only ensuring that buildtime dependencies such as `make`, `cURL` and `git` are only included in the buildtime image.
- Remove any dependencies from the developer's machine. To build the image, the developer only needs to have a working Docker setup.



To build:

```
$ docker build -t builder . ; docker run builder | docker build -t diamond -
```
 
 
To run:

``` 
$ docker run diamond
```

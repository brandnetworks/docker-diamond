# Diamond Docker

Dockerfiles for collecting host metrics using [Diamond](https://github.com/python-diamond/Diamond).

There are multiple Dockerfiles included in this repo, each used for a separate step in the build:

 - Dockerfile.deps: Used to build an image based on Debian Jessie including dependencies required in both the build and runtime.
 - Dockerfile: Buildtime image, used to build a .deb package of diamond. Includes build-specific dependencies.
 - Dockerfile.run: The runtime image for Diamond. Includes only those dependencies required at runtime.


This design has two major goals:

- Reduce the size of the final runtime image, by ensuring that buildtime dependencies such as `make` and `git` are **only** included in the build-time image.
- Remove any dependencies from the developer's machine. To build the image, the developer only needs to have a working Docker setup.



To build:

```
$ docker build -t builder . && docker run builder | docker build -t diamond -
```
 
 
To run:

``` 
$ docker run diamond
```

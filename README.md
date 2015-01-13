# c2s-docker
This repository provides a Dockerfile for the [c2s toolbox](https://github.com/lucastheis/c2s).

It is currently not available on Docker Hub but it can be used using the following commands.

## How to use

After installing [Docker](https://www.docker.com/), clone this repository:

```sh
git clone https://github.com/jonasrauber/c2s-docker.git
```

Then build the Docker image. The new image will be called `c2s`. The whole build process may take some time.

```sh
cd c2s-docker
docker build --tag="c2s" --rm=true .
```

You can then run a container based on the new image:

```sh
docker run -it --rm c2s
```

By default, this starts `bash` from which you should be able to run `c2s`.
You can also run `c2s` directly:

```sh
docker run -it --rm c2s c2s
```

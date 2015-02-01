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
docker build --rm -t jonasrauber/c2s .
```

You can then run `c2s` by running a container based on the new image:

```sh
docker run -it --rm -v $PWD:/data/workdir jonasrauber/c2s`
```

Because of the `-v $PWD:/data/workdir` parameter, `c2s` has access to all files in the current working directory and its subdirectories.


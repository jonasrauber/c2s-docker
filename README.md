# c2s-docker
This repository provides a Dockerfile for the [c2s toolbox](https://github.com/lucastheis/c2s).

It is currently not available on Docker Hub but it can be used using the following commands.

## How to use

After installing [Docker](https://www.docker.com/), you can build the `c2s` Docker image. The whole build process may take some time.

```sh
docker build --rm -t jonasrauber/c2s https://github.com/jonasrauber/c2s-docker.git
```

You can then run `c2s` by running a container based on the new image:

```sh
docker run -it --rm -v $PWD:/data/workdir jonasrauber/c2s`
```

The `-v $PWD:/data/workdir` parameter provides `c2s` with access to all files in the current working directory and its subdirectories.

## TODO

* ~~provide easy access to files on the host (volumes, etc.)~~
* make the image available on Docker Hub
* …

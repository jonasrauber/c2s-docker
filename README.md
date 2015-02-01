# c2s-docker
This repository provides a Dockerfile for the [c2s toolbox](https://github.com/lucastheis/c2s).

It is currently not available on Docker Hub but it can be used using the following commands.

## How to use

After installing [Docker](https://www.docker.com/), you can build the `c2s` Docker image. The whole build process may take some time.

```sh
docker build --rm -t jonasrauber/c2s https://github.com/jonasrauber/c2s-docker.git
```

To simplify running `c2s` in a Docker container, create an alias:

```sh
alias c2s='docker run -it --rm -v $PWD:/data/workdir jonasrauber/c2s'
```

This creates a temporary alias. In order to make it persistent, just append this line to your `~/.bashrc`, `~/.zshrc` or similar files. This can be done like this:

```sh
alias c2s >> ~/.bashrc
# or
alias c2s >> ~/.zshrc
```

You can then use `c2s` as if it would be installed on the host:

```sh
c2s predict data.mat predictions.mat
```

The only difference is that `c2s` can only access files in your current working directory and its subdirectories.

## TODO

* ~~provide easy access to files on the host (volumes, etc.)~~
* make the image available on Docker Hub
* …

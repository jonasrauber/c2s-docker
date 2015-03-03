# c2s-docker
Dockerfile for the [c2s toolbox](https://github.com/lucastheis/c2s)

## How to use

*Please note that you might need to prefix all docker commands with `sudo` depending on your docker setup.*

After installing [Docker](https://www.docker.com/), get the `c2s` Docker image:

```
docker pull jonasrauber/c2s
```

Alternatively, you can build the image yourself, however the build process may take some time.

```sh
docker build --rm -t jonasrauber/c2s https://github.com/jonasrauber/c2s-docker.git
```

To simplify running `c2s` in a Docker container, create an alias:

```sh
alias c2s='docker run -it --rm -v $PWD:/data/workdir jonasrauber/c2s'
```

This creates a temporary alias. In order to make it persistent, just append this line to your `~/.bashrc`, `~/.zshrc` or similar files. If you are using `bash`, this can be done like this:

```sh
alias c2s >> ~/.bashrc
```

If you are using `zsh`, use this instead:

```sh
alias -L c2s >> ~/.zshrc
```

You can then use `c2s` as if it would be installed on the host:

```sh
c2s predict data.mat predictions.mat
```

The only difference is that `c2s` can only access files in your current working directory and its subdirectories.

To get more information on `c2s` itself, have a look at the [c2s repository](https://github.com/lucastheis/c2s) and the [c2s documentaiton](http://c2s.readthedocs.org/en/latest/).


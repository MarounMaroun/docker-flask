# docker-flask

A very simple hello-world tutorial on running a docker container, that has a Gunicorn server wrapped around a flask application.

### Building and running

First you need to build the image from the Docker file. I already included a simple `Makefile`:

```bash
make build
```

After the build finishes successfully, we simply run the container:

```bash
make run
```

### Hello world!

The server is listening on port 8003, that is published to the host.

Verify all works by opening `localhost:8003` in your browser, or:

```bash
curl 127.0.0.1:8003
```

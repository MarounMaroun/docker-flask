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

### Running with local K8s via Minikube

Assuming you already have Minikube running on your system, follow the steps below.

In order to use local docker images, you need to run:

```bash
eval $(minikube docker-env)
```

note that you should do that on each terminal you want to use!

Next, build the image:

```bash
docker build -t marounbassam/hello-flask:v1 .
```

run on `kubectl` and expose the deployment: 

```bash
kubectl run hello-flask --image=marounbassam/hello-flask:v1 --port=8003 --image-pull-policy=IfNotPresent
kubectl expose deployment hello-flask --type=NodePort
```

Now we can reach the endpoint of our application:

```bash
curl $(minikube service hello-flask --url)
```
cargomedia/janus
=============
Docker image with janus-gateway server and some plugins.

Build:
```sh
docker build -t cargomedia/janus:v1 .
```

Run (in test mode):
```sh
docker run -it --rm -e hostname=my-janus-server.com janus:v1
```
